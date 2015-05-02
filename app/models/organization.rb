class Organization < ActiveRecord::Base
  has_many :memberships
  has_many :members, through: :memberships, source: :user
  has_one :board
  
  def to_s
    "#{name}"
  end
end
