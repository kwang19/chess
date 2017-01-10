class Chessplayer < ApplicationRecord
  # Direct associations

  has_one    :profile,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
