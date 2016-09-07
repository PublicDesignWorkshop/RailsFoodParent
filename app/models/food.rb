class Food < ActiveRecord::Base
  has_many :tree
  has_many :donation

  scope :pickable, -> { where(:visible => true) }
  scope :farm, -> { where(:visible => false) }
  # Get foods donated in +/- 2 weeks
  scope :in_season, -> { joins(:donation).where("abs(date_part('doy',donations.created_at) - extract('doy' from timestamp ?)) < ?", Time.now, 14).uniq }
end
