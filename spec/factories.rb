FactoryGirl.define do
  factory :user do
    forename "Koira"
    surname "Koira"
    email "koira@koira.fi"
    password "Foobar1"
    password_confirmation "Foobar1"
  end

  factory :organization do
    name "Intelligenzia"
    founded "1989"
    description "Kognitiotieteen ainejärjestö"
  end
end