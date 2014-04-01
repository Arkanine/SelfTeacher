class Lesson < ActiveRecord::Base
  has_many :exercises
  belongs_to :level

  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
