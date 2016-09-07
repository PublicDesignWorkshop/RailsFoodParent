class Tree < ActiveRecord::Base
  belongs_to :food
  has_many :adoptions
  has_many :users, through: :adoptions
  has_many :notes
  has_many :donations
  has_many :locations, through: :donations

  scope :public_trees, lambda { where("public = true") }
  scope :alive, lambda { where("dead = 0") }
  scope :not_farm, lambda { where('id > -1') }
  scope :in_season, lambda { where(:food_id => Food.pickable.in_season) }
end
