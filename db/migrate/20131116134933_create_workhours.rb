class CreateWorkhours < ActiveRecord::Migration
  def change
    create_table :workhours do |t|
      t.date :date_of_workhour
      t.decimal :hours
      t.integer :factor
      t.decimal :nettoLoon
      t.integer :user_id

      t.timestamps
    end
  end
end
