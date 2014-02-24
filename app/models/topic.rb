class Topic < ActiveRecord::Base
  belongs_to :rubric
  has_many :comments
end
