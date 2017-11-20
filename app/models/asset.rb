class Asset < ApplicationRecord
  belongs_to :location
  mount_uploader :file, FileUploader
end
