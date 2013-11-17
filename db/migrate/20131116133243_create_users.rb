class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.decimal :brutoUurLoon
      t.decimal :nettoUurLoon

      t.timestamps
    end
  end
end
