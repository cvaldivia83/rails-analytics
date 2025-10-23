class SearchLog < ApplicationRecord
  validates :user_ip, :query, presence: true
  validates :user_ip, format: { with: /[0-9]{3}\.([0-9]{2,3}\.){2}[0-9]{2,3}/, message: "IP must follow conventional format" }
  validates :query, length: { minimum: 3 }
end
