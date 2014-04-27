class Deck < ActiveRecord::Base
  has_many :cards_decks
  has_many :cards, through: :cards_decks
end
