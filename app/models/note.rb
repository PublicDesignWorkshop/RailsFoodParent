class Note < ActiveRecord::Base
  belongs_to :tree
  has_one :person
end
