class Chessplayer < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_one    :profile,
             :dependent => :destroy

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
