class Level < ActiveRecord::Base
  validates_presence_of :name

  has_many :lessons
end