class CreatePayments < ActiveRecord::Migration
  def self.up
    create_table :payments do |t|
      t.decimal :amount, precision: 8, scale: 2
      t.string :type
      t.text :notes
      t.timestamps
    end
  end

  def self.down
    drop_table :payments
  end
end
