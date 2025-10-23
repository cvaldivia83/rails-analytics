FactoryBot.define do
  factory :search_log do
    query { "where is Wally?" }
    user_ip { "233.28.81.112" }
  end
end
