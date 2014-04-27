class Guess < ActiveRecord::Base
  def correct?
    self.user_input == self.answer
  end
end
