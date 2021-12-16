class CreateTodotasks < ActiveRecord::Migration[6.1]
  def change
    create_table :todotasks do |t|
      t.string :title

      t.timestamps
    end
  end
end
