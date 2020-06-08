FactoryBot.define do
  factory :profile do
    name { "MyString" }
    preferred_name { "MyString" }
    description { "MyString" }
    birth_date { "2020-05-19" }
    #file { fixture_file_upload 'test.jpeg', 'image/jpeg' }
  end
end
