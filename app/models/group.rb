class Group < ActiveRecord::Base
  attr_accessible :name, :departure, :arrival, :destination, :trip_length, :notes, :trip_cost

  has_many :members
end
