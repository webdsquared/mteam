class CreateMembers < ActiveRecord::Migration
  def self.up
    create_table :members do |t|
      t.string :first_name
      t.string :last_name
      t.string :street_address
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :alt_phone
      t.string :email
      t.timestamps
    end
  end

  def self.down
    drop_table :members
  end
end
