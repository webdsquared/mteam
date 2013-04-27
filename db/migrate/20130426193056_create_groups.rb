class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :name
      t.date :departure
      t.date :arrival
      t.string :destination
      t.string :trip_length
      t.text :notes
      t.timestamps
    end
  end

  def self.down
    drop_table :groups
  end
end
