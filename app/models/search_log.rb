class SearchLog < ApplicationRecord
  validates :user_ip, :session_id, :query, presence: true
  validates :session_id, format: { with: /\A([a-z]|[0-9]){32}\z/i, message: "String has hexadecimal values" }
  validates :user_ip, format: { with: /[0-9]{3}\.([0-9]{2,3}\.){2}[0-9]{2,3}/, message: "IP must follow conventional format" }
  validates :query, length: { minimum: 3 }
end
