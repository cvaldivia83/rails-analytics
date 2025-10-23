class SearchSummary < ApplicationRecord
  validates :user_ip, :search_term, :count, :last_searched_at, presence: true
  validates :user_ip, format: { with: Resolv::IPv4::Regex }
  validates :search_term, uniqueness: { scope: :user_ip }
  validates :count, numericality: { only_integer: true }
end
