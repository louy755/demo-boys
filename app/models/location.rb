class Location < ApplicationRecord
  geocoded_by :name
  has_many :assets
  after_validation :geocode, :if => :name_changed?
end
