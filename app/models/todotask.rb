class Todotask < ApplicationRecord

  def completed?
    #completed_at? comes from ActiveRecord - checks if nil or not
    completed_at?
  end
end
