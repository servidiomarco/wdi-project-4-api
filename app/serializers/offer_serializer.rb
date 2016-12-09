class OfferSerializer < ActiveModel::Serializer
  has_one :user
  has_many :attendees
  attributes :id, :title, :menu, :date, :image, :price, :cuisine, :max_seats, :address, :attendee_ids
end
