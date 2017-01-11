class Prospector < ApplicationRecord
  # Direct associations

  belongs_to :user

  has_many   :comments,
             :dependent => :destroy

  # Indirect associations

  # Validations

end
