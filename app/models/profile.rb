class Profile < ApplicationRecord
  mount_uploader :profile_photo, ProfilePhotoUploader

  # Direct associations

  has_many   :profiledetails,
             :foreign_key => "profiles_id",
             :dependent => :destroy

  belongs_to :chessplayer

  # Indirect associations

  # Validations

end
