class Organization < ActiveRecord::Base
  has_many :students, through: :memberships
  validates_presence_of :founded


end
