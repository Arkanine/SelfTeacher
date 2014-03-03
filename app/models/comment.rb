class Comment < ActiveRecord::Base
  has_ancestry

  belongs_to :user
  belongs_to :topic
  belongs_to :rubric
end
