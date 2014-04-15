class Level < ActiveRecord::Base
  validates_presence_of :name, :content

  has_many :lessons
end