class FavoriteDrinkSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :cocktail
end
