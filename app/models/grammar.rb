class Grammar < ActiveRecord::Base
  private
  def self.search(search)
    if search
      find(:all, :conditions => ['name LIKE ? OR content LIKE ? OR basis LIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end
end
