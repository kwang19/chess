class Chessplayer < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  has_one    :profile,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
