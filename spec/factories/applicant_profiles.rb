FactoryBot.define do
  factory :applicant_profile do
    name { "MyString" }
    preferred_name { "MyString" }
    birth_date { "2020-05-17" }
    country_state { 1 }
    education { nil }
    description { "MyString" }
    experience { nil }
    avatar { "MyString" }
  end
end
