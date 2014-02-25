class Rubric < ActiveRecord::Base
  has_many :topics
  accepts_nested_attributes_for :topics

  def topics_for_form
    collection = topics.where(rubric_id: id)
    collection.any? ? collection : topics.build
  end
end
