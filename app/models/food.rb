class Food < ActiveRecord::Base
  belongs_to :tree
  belongs_to :donation
  
end
