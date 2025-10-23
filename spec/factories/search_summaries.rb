FactoryBot.define do
  factory :search_summary do
    user_ip { "192.168.1.1" }
    search_term { "Where Wally" }
    count { 1 }
    last_searched_at { "2025-10-13 15:31:06" }
  end
end
