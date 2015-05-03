class User < ActiveRecord::Base
  has_secure_password

  has_many :memberships, dependent: :destroy
  has_many :organizations, through: :memberships

  validates :email, uniqueness: true,
            length: { minimum: 3}

  def to_s
    "#{forename + ' ' + surname}"
  end
end
