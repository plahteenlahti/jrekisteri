class User < ActiveRecord::Base
  has_secure_password

  def to_s
    "#{forename + ' ' + surname}"
  end
end
