class Offer < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :attendees, class_name: 'User', join_table: 'offers_users'
end
