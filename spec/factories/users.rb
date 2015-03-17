FactoryGirl.define do
  factory :user do
    sequence(:email) { |n| "someone#{n}@example.com" }
    password 'password'
    password_confirmation 'password'
    remember_me_token 'xBQ79KZ9FLTHStczKU6C'
    remember_me_token_expires_at Time.now
    reset_password_token 'xBQ79KZ9FLTHStczKU6C'
    reset_password_email_sent_at Time.now
  end
end
