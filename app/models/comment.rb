class Comment < ActiveRecord::Base
  validates_presence_of  :content, :user_id, :topic_id, :rubric_id

  has_ancestry

  belongs_to :user
  belongs_to :topic
  belongs_to :rubric
end
