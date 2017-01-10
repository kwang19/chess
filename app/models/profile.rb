class Profile < ApplicationRecord
  mount_uploader :profile_photo, ProfilePhotoUploader

  # Direct associations

  has_many   :profiledetails,
             :foreign_key => "profiles_id",
             :dependent => :destroy

  belongs_to :users,
             :class_name => "Chessplayer",
             :foreign_key => "chessplayer_id"

  # Indirect associations

  # Validations

end
