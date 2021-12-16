class Addemailtotodos < ActiveRecord::Migration[6.1]
  def change
    add_column :todotasks, :email, :string
  end
end
