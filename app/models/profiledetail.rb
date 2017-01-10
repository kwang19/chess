class Profiledetail < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  # Direct associations

  belongs_to :profiles

  # Indirect associations

  # Validations

end
