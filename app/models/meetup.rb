class Meetup < ApplicationRecord
  belongs_to :user

  validates :name, :evaluation_date, :latitude, :longtiude, presence: true
  validates :name, length: { maximum: 50}
  validates :description, length: { minimum: 5, maximum: 500}
end
