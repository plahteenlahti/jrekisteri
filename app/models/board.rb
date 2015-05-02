class Board < ActiveRecord::Base
  belongs_to :organization
  has_many :actives, through: :positions, source: :user

end
