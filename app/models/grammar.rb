class Grammar < ActiveRecord::Base
  private
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ? OR content LIKE ?', "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end
end
