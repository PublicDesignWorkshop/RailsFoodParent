class Donation < ActiveRecord::Base
  belongs_to :tree
  belongs_to :location
  has_one :food
  has_one :person
end
