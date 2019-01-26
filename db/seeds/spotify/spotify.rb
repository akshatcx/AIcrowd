Challenge.create!([
  {id: 100,
    answer_file_s3_key: nil,
    api_required: false,
    organizer_id: 21,
    challenge: "Spotify Sequential Skip Prediction Challenge",
    challenge_client_name: "spotify-sequential-skip-prediction-challenge",
    clef_task_id: nil,
    clef_challenge: false,
    dataset_description_markdown: "this is the dataset license",
    description_markdown: File.read('description.md'),
    dynamic_content_flag: false,
    dynamic_content: nil,
    dynamic_content_tab: nil,
    evaluation_markdown: File.read('evaluation.md'),
    featured_sequence: 10,
    remote_image_file_url: "https://dnczkxd1gcfu5.cloudfront.net/images/challenges/image_file/50/spotify.png",
    # image_file: "https://dnczkxd1gcfu5.cloudfront.net/images/challenges/image_file/50/spotify.png",
    license_markdown: "this is the license",
    grader_identifier: "crowdAI_GRADER_POOL",
    grader_logs: true,
    grading_history: true,
    media_on_leaderboard: false,
    online_grading: true,
    online_submissions: true,
    page_views: 30800,
    participant_count: 6300,
    perpetual_challenge: false,
    post_challenge_submissions: false,
    prize_cash: "$1 Million USD",
    prize_academic: "8",
    prize_misc: "Some other things",
    prizes_markdown: File.read('prizes.md'),
    primary_sort_order_cd: "ascending",
    private_challenge: false,
    require_registration: false,
    resources_markdown: File.read('resources.md'),
    rules_markdown: File.read('rules.md'),
    secondary_sort_order_cd: "not_used",
    score_secondary_title: "Secondary Score",
    score_title: "Score",
    slug: "train-schedule-optimisation-challenge",
    show_leaderboard: true,
    status_cd: "running",
    submission_count: 4100,
    submission_license: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean vel malesuada leo, in efficitur erat. Nam id purus nulla. Cras ac libero eget diam luctus ultrices. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Mauris tempor aliquet malesuada. Interdum et malesuada fames ac ante ipsum primis in faucibus. Phasellus at quam ac enim elementum placerat luctus euismod dui. Suspendisse ligula lacus, luctus vel placerat vitae, varius ac sem. Quisque venenatis lectus eu nulla commodo molestie. Vestibulum consectetur elit dictum risus consequat, at laoreet risus euismod.",
    submissions_page: true,
    tagline: "Predict if users will skip or listen to the music they're streamed",
    toc_acceptance_instructions_markdown: "This is the challenge terms",
    require_toc_acceptance: true,
    vote_count: 55,
    winner_description_markdown: "winner description markdown",
    winners_tab_active: false,
}])

ChallengeRound.create!([
  {id: 101,
    challenge_id: 100,
    challenge_round: "Public Evaluation",
    active: true,
    submission_limit: 2,
    submission_limit_period_cd: "day",
    start_dttm: 10.days.ago,
    end_dttm: Time.now + 10.days,
    minimum_score: nil,
    minimum_score_secondary: nil,
    ranking_window: 24,
    ranking_highlight: 3,
    score_precision: 3,
    score_secondary_precision: 3,
    leaderboard_note_markdown: "",
    leaderboard_note: "\n"},
  {id: 102,
    challenge_id: 100,
    challenge_round: "Round 1",
    active: true,
    submission_limit: 5,
    submission_limit_period_cd: "day",
    start_dttm: "2018-08-08 12:00:00",
    end_dttm: "2018-11-09 12:00:00",
    minimum_score: nil,
    minimum_score_secondary: nil,
    ranking_window: 96,
    ranking_highlight: 3,
    score_precision: 3,
    score_secondary_precision: 3,
    leaderboard_note_markdown: "",
    leaderboard_note: "\n"},
  {id: 103,
    challenge_id: 100,
    challenge_round: "Final Evaluation",
    active: false,
    submission_limit: 5,
    submission_limit_period_cd: "day",
    start_dttm: "2018-08-11 12:00:00",
    end_dttm: "2018-12-31 12:00:00",
    minimum_score: nil,
    minimum_score_secondary: nil,
    ranking_window: 96,
    ranking_highlight: 3,
    score_precision: 3,
    score_secondary_precision: 3,
    leaderboard_note_markdown: "",
    leaderboard_note: "\n"}
])

ChallengePartner.create!([
  {
    challenge_id: 100,
    remote_image_file_url: "https://dnczkxd1gcfu5.cloudfront.net/images/challenge_partners/image_file/54/SDSC_logo.png",
    partner_url: "https://datascience.ch/"
  },
  {
    challenge_id: 100,
    remote_image_file_url: "https://dnczkxd1gcfu5.cloudfront.net/images/challenge_partners/image_file/55/spotify.png",
    partner_url: "https://www.spotify.com/"
  }

])