class ConvertCamelcaseToUnderscores < ActiveRecord::Migration
  def up
    rename_column :workhours, :nettoLoon, :net_wage
    rename_column :users, :nettoUurLoon, :hourly_net_wage
    rename_column :users, :brutoUurLoon, :hourly_gross
  end

  def down
    rename_column :workhours, :net_wage, :nettoLoon
    rename_column :users, :hourly_net_wage, :nettoUurLoon
    rename_column :users, :hourly_gross, :brutoUurLoon
  end
end
