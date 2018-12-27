class GameSerializer < ActiveModel::Serializer
  has_many :cards
  attributes :id, :score, :cards, :user_id
end
