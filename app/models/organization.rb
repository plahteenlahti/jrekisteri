class Organization < ActiveRecord::Base
  has_many :memberships
  has_many :members, through: :memberships, source: :user
  has_one :board

  validates :name, uniqueness: true,
            length: { minimum: 3}

  def to_s
    "#{name}"
  end
end
