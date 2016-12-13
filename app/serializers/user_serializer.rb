class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :email, :image, :offers_attending, :offers_attending_ids
end
