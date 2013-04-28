class Payment < ActiveRecord::Base
  attr_accessible :amount, :notes, :date, :payment_method

  belongs_to :member

  

end
