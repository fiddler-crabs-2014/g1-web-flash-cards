class CreateCardsDecks < ActiveRecord::Migration
  def change
    create_table :cards_decks do |t|
      t.belongs_to :card
      t.belongs_to :deck
      t.timestamps
    end
  end
end
