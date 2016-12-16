class OfferSerializer < ActiveModel::Serializer
  has_one :user
  has_many :attendees
  has_many :comments
  attributes :id, :title, :menu, :date, :image, :price, :cuisine, :max_seats, :city, :address, :attendee_ids, :attendees, :comments, :seats_available, :latitude, :longitude

  def seats_available
    object.max_seats - object.attendees.length
  end
end
