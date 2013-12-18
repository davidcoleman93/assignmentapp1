class PostsController < ApplicationController
before_filter :authorise
def create
	@product = Product.find params[:product_id]
	@post = @product.posts.create params[:post]
	@post.customer_id = @current_customer.id   #sets the customer_id FK
	@post.save		#saves the @post
				#object to the posts table
		respond_to do |format|
			format.js
			format.html{ redirect_to @product }
		end
	
end

def destroy
		@product = Product.find params[:product_id]
		@post = Post.find (params[:id])	
		@post.destroy
	
	respond_to do |format|
		format.html {redirect_to @product}
		end
end
end
