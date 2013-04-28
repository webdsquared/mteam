class Member < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :street_address, :city, :state, :zip, :phone, :alt_phone, :email

  belongs_to :group
  has_many :payments

  def calculate_funds
  	self.group.trip_cost - self.payments.sum(:amount)
  end
end
