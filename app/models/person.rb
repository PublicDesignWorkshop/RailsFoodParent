class Person < ActiveRecord::Base
  has_many :trees, through: :adoptions
  has_many :donations
end
