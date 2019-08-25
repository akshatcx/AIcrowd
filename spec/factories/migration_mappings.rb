FactoryBot.define do
  factory :migration_mapping do
    source_type { "MyString" }
    source_id { 1 }
    crowdai_participant_id { 1 }
  end
end
