class Program < ApplicationRecord
  belongs_to :user
  has_many :mentorships

  validates :name, presence: true
  validates :category, presence: true
end
