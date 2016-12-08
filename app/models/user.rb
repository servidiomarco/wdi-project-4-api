class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_confirmation, presence: true, on: :create

  has_and_belongs_to_many :offers_attending, class_name: 'Offer', join_table: 'offers_users'
end
