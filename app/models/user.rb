class User < ApplicationRecord
  def initialize(email)
    @email = email
  end

  def todos
    Todotask.where(email: @email)
  end
  
  def signed_in?
    @email.present?
  end
end
