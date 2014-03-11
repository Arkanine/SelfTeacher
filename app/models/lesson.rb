class Lesson < ActiveRecord::Base
  has_many :exercises
  belongs_to :level
end
