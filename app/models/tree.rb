class Tree < ActiveRecord::Base
  has_one :food
  has_many :adoptions
  has_many :people, through: :adoptions
  has_many :notes
  has_many :donations
  has_many :locations, through: :donations

  scope :public, lambda { where("public = 1") }
  scope :alive, lambda { where("dead = 0") }
  scope :not_farm, lambda { where('id > -1') }
  # XXX not right yet
  # scope :in_season, lambda { joins(:donations).where(where("abs(date_part('day',donations.created_at - ?)) < ?", Time.now, 2.week), Time.now, 2.week) }

end
