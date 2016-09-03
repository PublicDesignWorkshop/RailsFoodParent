class Adoption < ActiveRecord::Base
  belongs_to :person
  belongs_to :tree
end
