class Asset < ActiveRecord::Base
  has_one :owner
  accepts_nested_attributes_for :owner
end
