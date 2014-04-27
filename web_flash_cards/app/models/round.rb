class Round < ActiveRecord::Base
  validates :remaining_cards, numericality: { less_than_or_equal_to: 10}

  belongs_to :user

  def up_score!
    self.correct += 1
    return "Correct!"
  end

  def down_score!
    self.incorrect += 1
    return "Incorrect."
  end

  def game_over?
    self.remaining_cards == 0
  end

  def update!
    self.remaining_cards -= 1
    self.save
  end

end
