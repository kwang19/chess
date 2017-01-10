class Profile < ApplicationRecord
  # Direct associations

  belongs_to :users,
             :class_name => "Chessplayer",
             :foreign_key => "chessplayer_id"

  # Indirect associations

  # Validations

end
