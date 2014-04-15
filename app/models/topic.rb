class Topic < ActiveRecord::Base
  validates_presence_of :name, :content, :user_id
  validates_length_of :name, maximum: 200

  belongs_to :rubric
  belongs_to :user
  has_many :comments, dependent: :destroy
end