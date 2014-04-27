class User < ActiveRecord::Base
  has_many :rounds

  def self.authenticate(email, password)
    user = User.where(["email = ?", email]).first
    if user && user.password == password
      user
    else
      nil
    end
  end

end
