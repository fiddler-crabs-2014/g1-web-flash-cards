class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.integer :correct, :default => 0
      t.integer :incorrect, :default => 0
      t.integer :remaining_cards, :default => 10
      t.belongs_to :users
      t.timestamps
    end
  end
end
