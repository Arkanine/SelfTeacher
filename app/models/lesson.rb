class Lesson < ActiveRecord::Base
  validates_presence_of :name, :content, :level_id

  has_many :exercises
  belongs_to :level
end