class Product < ActiveRecord::Base
has_many :prescriptions
has_many :orders
validates :name ,presence:true
validates :price ,presence:true
has_many :posts, :dependent => :destroy


has_many :line_items

def self.search(search)
   search_condition = search + "%"
   find(:all, :conditions => ['name LIKE  ?', search_condition])
end

before_destroy :ensure_not_referenced_by_any_line_item
#...

private
# ensure that there are no line items referencing this product
def ensure_not_referenced_by_any_line_item
	if line_items.empty?
		return true
	else
		errors.add(:base, 'Line Items present')
		return false
	end
end

end
