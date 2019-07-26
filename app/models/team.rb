class Team < ApplicationRecord
  belongs_to :challenge, inverse_of: :teams

  has_many :team_participants, inverse_of: :team, dependent: :destroy
  has_many :team_participants_organizer, ->{ role_organizers }, class_name: 'TeamParticipant'

  has_many :team_invitations, inverse_of: :team, dependent: :destroy
  has_many :team_invitations_pending, ->{ status_pendings }, class_name: 'TeamInvitation'

  has_many :participants, through: :team_participants, inverse_of: :teams

  scope :allowing_invitations, -> { where(invitations_allowed: true) }
  scope :with_at_least_n_participants, -> (n) {
    where(id:
      Team.joins(:team_participants)
        .group(Team.arel_table[:id])
        .having(TeamParticipant.arel_table[:id].count.gteq(n))
        .select(Team.arel_table[:id])
    )
  }
  scope :concrete, -> { with_at_least_n_participants(2) }

  validates_uniqueness_of :name, scope: :challenge_id # case-insensitive because name is a citext
  validates_length_of :name, in: 2...256
  validates_format_of :name,
    with: /(?=.*[a-zA-Z])/,
    message: 'must have at least one letter'
  validates_format_of :name,
    with: /\A[a-zA-Z0-9.\-_{}\[\]]+\z/,
    message: 'may only contain letters and numbers and these quoted characters: "-_.{}[]"'

  def to_param
    name
  end

  def concrete?
    team_participants.size >= 2
  end

  def organized_by?(participant)
    participant && team_participants_organizer.exists?(participant_id: participant.id)
  end
end
