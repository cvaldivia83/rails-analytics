FactoryBot.define do
  factory :search_log do
    query { "where is Wally?" }
    user_ip { "233.28.81.112" }
    session_id { "a1b2c3d4e5f6a7b8c9d0e1f2a3b4c5d6" }
  end
end
