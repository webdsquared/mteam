class Payment < ActiveRecord::Base
  attr_accessible :amount, :type, :notes, :date

  belongs_to :member
end
