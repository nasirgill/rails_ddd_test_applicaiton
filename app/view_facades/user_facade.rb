class UserFacade
  attr_accessor :user
  def initialize(user)
    self.user = user
  end

  def to_h
    {
      name: user.name,
      place_of_birth_of_customer: user.place_of_birth_of_customer,
      date_of_birth: user.date_of_birth
    }
  end
end