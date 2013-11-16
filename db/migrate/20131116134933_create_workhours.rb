class CreateWorkhours < ActiveRecord::Migration
  def change
    create_table :workhours do |t|
      t.integer, :day
      t.integer :month
      t.integer :year
      t.double :hours
      t.integer :factor
      t.double :nettoLoon
      t.integer :user_id

      t.timestamps
    end
  end
end
