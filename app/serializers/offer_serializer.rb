class OfferSerializer < ActiveModel::Serializer
  attributes :id, :title, :menu, :date, :image, :price, :cuisine, :max_seats, :address
  has_one :user
end
