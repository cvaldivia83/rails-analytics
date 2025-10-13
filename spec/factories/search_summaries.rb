FactoryBot.define do
  factory :search_summary do
    user_ip { "187.094.305.071" }
    session_id { "a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6" }
    search_term { "Where Wally" }
    count { 1 }
    last_searched_at { "2025-10-13 15:31:06" }
  end
end
