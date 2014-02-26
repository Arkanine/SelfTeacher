class Topic < ActiveRecord::Base
  belongs_to :rubric
  belongs_to :user
  has_many :comments, dependent: :destroy
end
