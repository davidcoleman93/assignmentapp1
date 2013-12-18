class Prescription < ActiveRecord::Base
belongs_to :product
belongs_to :customer
validates :prescriber ,presence:true
end
