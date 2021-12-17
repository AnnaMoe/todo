class Todotask < ApplicationRecord

  def completed?
    #completed_at? comes from ActiveRecord - checks if nil or not
    completed_at?
  end

  def complete!
    # touch is ActiveRecord method, creates timestamp and persists record in db
    touch :completed_at
  end

  def mark_incomplete!
    update_column :completed_at, nil
  end

end
