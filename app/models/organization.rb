class Organization < ActiveRecord::Base
  has_many :students, through: :memberships

end
