class Chessplayer < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :comments,
             :dependent => :destroy

  has_one    :profile,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
