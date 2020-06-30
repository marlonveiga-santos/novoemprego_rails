FactoryBot.define do
  factory :profile do
    name { "MyString" }
    preferred_name { "MyString" }
    description { "MyString" }
    birth_date { "2020-05-19" }
    gender { 1 }
    avatar { Rack::Test::UploadedFile.new('app/assets/images/test.jpeg', 'image/jpeg') }


    after :create do |profile|
      create :education, profile: profile     # has_one
      create :profession, profile: profile     # has_one
    end 

    trait :with_education do
      transient do
        associated_education Education.last
      end

      education { associated_education }
    end
  end
end
