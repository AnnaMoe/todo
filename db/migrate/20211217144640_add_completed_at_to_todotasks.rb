class AddCompletedAtToTodotasks < ActiveRecord::Migration[6.1]
  def change
    add_column :todotasks, :completed_at, :timestamp
  end
end
