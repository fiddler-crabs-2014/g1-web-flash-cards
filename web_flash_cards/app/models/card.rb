class Card < ActiveRecord::Base
  has_many :cards_decks
  has_many :decks, through: :cards_decks
end
