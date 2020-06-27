FactoryBot.define do
  factory :job do
    headhunter { nil }
    title { "MyString" }
    description { "MyText" }
    habilities { "MyText" }
    salary { "MyString" }
    level { 1 }
    end_date { "2020-06-26" }
    address { "MyString" }
    note { "MyText" }
  end
end
