class StoreordersController < ApplicationController
  # GET /storeorders
  # GET /storeorders.json
  def index
    @storeorders = Storeorder.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @storeorders }
    end
  end

  # GET /storeorders/1
  # GET /storeorders/1.json
  def show
    @storeorder = Storeorder.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @storeorder }
    end
  end

  # GET /storeorders/new
  # GET /storeorders/new.json
  def new
	@cart = current_cart
	if @cart.line_items.empty?
	redirect_to products_url, notice: "Your cart is empty"
	return
	end

  
    @storeorder = Storeorder.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @storeorder }
    end
  end

  # GET /storeorders/1/edit
  def edit
    @storeorder = Storeorder.find(params[:id])
  end

  # POST /storeorders
  # POST /storeorders.json
  def create
    @storeorder = Storeorder.new(params[:storeorder])
	@storeorder.add_line_items_from_cart(current_cart)

    respond_to do |format|
      if @storeorder.save
		Cart.destroy(session[:cart_id])
		session[:cart_id] = nil
		format.html { redirect_to products_url, notice:'Thank you for your order.' }

        format.html { redirect_to @storeorder, notice: 'Storeorder was successfully created.' }
        format.json { render json: @storeorder, status: :created, location: @storeorder }
      else
		@cart = current_cart
	  
        format.html { render action: "new" }
        format.json { render json: @storeorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /storeorders/1
  # PUT /storeorders/1.json
  def update
    @storeorder = Storeorder.find(params[:id])
	


    respond_to do |format|
      if @storeorder.update_attributes(params[:storeorder])
        format.html { redirect_to @storeorder, notice: 'Storeorder was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @storeorder.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /storeorders/1
  # DELETE /storeorders/1.json
  def destroy
    @storeorder = Storeorder.find(params[:id])
    @storeorder.destroy

    respond_to do |format|
      format.html { redirect_to storeorders_url }
      format.json { head :no_content }
    end
  end
end
