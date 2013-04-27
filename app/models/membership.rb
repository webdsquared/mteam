class Membership < ActiveRecord::Base
  attr_accessible :created_at, :group_id, :member_id

  belongs_to :group
  belongs_to :member
end
