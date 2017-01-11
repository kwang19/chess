class Comment < ApplicationRecord
  # Direct associations

  belongs_to :user

  belongs_to :chessplayer

  # Indirect associations

  # Validations

end
