class Customer < ActiveRecord::Base
has_many :prescriptions
has_many :orders
validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
validates :name ,presence:true
validates :email ,uniqueness:true
has_many :posts, :dependent => :destroy

has_secure_password

geocoded_by :address
after_validation :geocode, :if => :address_changed?

	def age
		age = ((Date.current - self.dob)/ 365).to_i
	end
end
