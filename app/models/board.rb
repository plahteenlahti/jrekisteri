class Board < ActiveRecord::Base
  belongs_to :organization
  has_many :positions
  has_many :actives, through: :positions, source: :user


  def to_s
    "#{organization.to_s + " hallitus"}"
  end
end
