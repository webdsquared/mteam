class RemoveTypeFromPayments < ActiveRecord::Migration
  def up
    remove_column :payments, :type
  end

  def down
    add_column :payments, :type, :string
  end
end
