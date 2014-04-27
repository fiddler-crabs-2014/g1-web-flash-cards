class Round < ActiveRecord::Base

  def mark_correct!
    self.correct += 1
  end

  def mark_incorrect!
    self.incorrect += 1
  end

  def stats
    cards_played = self.incorrect + self.correct
    accuracy = (self.correct/cards_played).to_f.round(1)
    accuracy
  end

end

add_column :users, :rounds
add_column :users, :correct
add_column :users, :incorrect

