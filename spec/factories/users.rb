# Rails console RUN: FactoryBot.create(:user)
FactoryBot.define do
  factory :user do
    email { FFaker::Internet.email }
    password { '000000' }
    password_confirmation { '000000' }
  end
end
