class Program < ApplicationRecord
  belongs_to :user
  has_many :mentorships, dependent: :destroy

  validates :name, presence: true
  validates :category, presence: true
end
