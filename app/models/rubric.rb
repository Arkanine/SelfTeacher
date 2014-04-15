class Rubric < ActiveRecord::Base
  validates_presence_of :name, :body

  has_many :topics, dependent: :destroy
  has_many :comments
end
