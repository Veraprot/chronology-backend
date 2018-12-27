class Game < ApplicationRecord
  belongs_to :user
  has_many :cards
  extend HistoryAPI
end
