class Subject < ActiveRecord::Base
  has_many :students

  def to_s
    "#{self.name}"
  end
end
