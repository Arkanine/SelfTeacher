class Grammar < ActiveRecord::Base
  private
  def self.search(search)
    if search
      find(:all, :conditions => ['name ILIKE ? OR content ILIKE ? OR basis ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end
end
