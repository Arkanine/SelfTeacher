class Rubric < ActiveRecord::Base
  has_many :topics, dependent: :destroy
  has_many :comments
  accepts_nested_attributes_for :topics
end
