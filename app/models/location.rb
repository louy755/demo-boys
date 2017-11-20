class Location < ApplicationRecord
  geocoded_by :name
after_validation :geocode, :if => :name_changed?
end
