class AddTripCostToGroups < ActiveRecord::Migration
  def change
    add_column :groups, :trip_cost, :decimal, precision: 8, scale: 2
  end
end
