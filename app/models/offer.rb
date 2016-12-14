class Offer < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :attendees, class_name: 'User', join_table: 'offers_users'
  has_many :comments

  geocoded_by :address
  after_validation :geocode
end
