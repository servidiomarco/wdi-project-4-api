class OfferSerializer < ActiveModel::Serializer
  has_one :user
  has_many :attendees
  attributes :id, :title, :menu, :date, :image, :price, :cuisine, :max_seats, :city, :address, :attendee_ids, :seats_available

  def seats_available
    object.max_seats - object.attendees.length
  end
end
