class Donation < ActiveRecord::Base
  belongs_to :tree
  belongs_to :location
  belongs_to :food
  belongs_to :user

end
