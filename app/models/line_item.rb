class LineItem < ActiveRecord::Base
	belongs_to :product
	belongs_to :cart
	belongs_to :storeorder
	
	def total_price
		product.price * quantity
	end

end
