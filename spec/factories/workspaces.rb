FactoryBot.define do
  factory :workspace do
    name { "MyString" }
    preferred_name { "MyString" }
    gender { 1 }
    about { "MyText" }
    birth_date { "2020-06-22" }
    cpf { "MyString" }
  end
end
