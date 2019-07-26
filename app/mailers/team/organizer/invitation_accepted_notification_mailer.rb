# frozen_string_literal: true
class Team::Organizer::InvitationAcceptedNotificationMailer < Team::BaseMailer
  def sendmail(participant, invitation)
    @participant = participant
    @team = invitation.team
    @invitee = invitation.invitee
    mandrill_send(format_options)
  end

  def email_subject
    'Team Invitation Accepted'
  end

  def email_body_html
    <<~HTML
      <div>
        <p>Team #{linked_team_html} has a new team member!</p>
        <p>Participant #{linked_invitee_html} just accepted an invitation and is the newest member of the team.</p>
        #{signoff_html}
      </div>
    HTML
  end

  def notification_reason
    'Someone accepted an invitation to a team you organize.'
  end
end
