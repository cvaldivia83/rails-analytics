FactoryBot.define do
  factory :search_log do
    query { "MyString" }
    user_ip { "MyString" }
    session_id { "MyString" }
  end
end
