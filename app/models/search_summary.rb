class SearchSummary < ApplicationRecord
  validates :user_ip, :session_id, :search_term, :count, :last_searched_at, presence: true
  validates :session_id, format: { with: /\A([a-z]|[0-9]){32}\z/i, message: "String has hexadecimal values" }
  validates :user_ip, format: { with: /[0-9]{3}\.([0-9]{2,3}\.){2}[0-9]{2,3}/, message: "IP must follow conventional format" }
  validates :count, numericality: { only_integer: true }
end
