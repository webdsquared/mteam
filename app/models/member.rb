class Member < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :street_address, :city, :state, :zip, :phone, :alt_phone, :email

  belongs_to :group
  has_many :payments
end
