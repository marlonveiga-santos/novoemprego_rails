FactoryBot.define do
    factory :applicant do
      sequence(:email) { |n| "email#{n}@test.com.br" }
      password { '12345678' }
      after :create do |applicant|
        create :profile, applicant: applicant     # has_one
      end  
  end
end
