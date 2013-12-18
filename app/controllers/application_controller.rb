class ApplicationController < ActionController::Base
  protect_from_forgery
  include ApplicationHelper
def authorise
	unless signed_in?
	store_location
	redirect_to signin_path, :notice => "Please sign in to access this page."
	end
end

#def authoriseadmin
	#unless signed_in? && admin ==1
		#store_location
		#redirect_to signin_path, :notice => "Please sign in to access this page."
	#end
#end

private

def current_cart
		Cart.find(session[:cart_id])
	rescue ActiveRecord::RecordNotFound
		cart = Cart.create
		session[:cart_id] = cart.id
		cart
end

  
   def store_location
	session[:return_to]=request.fullpath
   end
end
