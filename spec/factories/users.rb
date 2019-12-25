FactoryBot.define do
  factory :user do
    email { "f1@example.com" }
    password { "password" }
  end

  factory :second_user, class: User do
    email { "f2@example.com" }
    password { "password" }
  end

  factory :third_user, class: User do
    email { "f3@example.com" }
    password { "password" }
  end
end