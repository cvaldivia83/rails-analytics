class Article < ApplicationRecord
  belongs_to :author

  validates :title, :subtitle, :body, :author, :year, presence: true
  validates :year, numericality: { only_integer: true }
end
