class Product < ActiveRecord::Base
mount_uploader :image, ImageUploader

belongs_to :category

validates :title, :description, presence: true
validates :price, numericality: {greater_than_or_equal_to: 0.01}
validates :title, uniqueness: true

before_destroy :ensure_not_referenced_by_any_line_item

private

	def ensure_not_referenced_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'существуют товарные позиции')
			return false
		end
  end

  def self.search(search)
    if search
      find(:all, :conditions => ['title LIKE ? OR author LIKE ?', "%#{search}%", "%#{search}%"])
    else
      find(:all)
    end
  end

end
