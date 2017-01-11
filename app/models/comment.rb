class Comment < ApplicationRecord
  # Direct associations

  belongs_to :prospector

  belongs_to :chessplayer

  # Indirect associations

  # Validations

end
