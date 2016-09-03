class Location < ActiveRecord::Base
  has_many :donations
  has_many :trees, through: :donations
end
