class OrdersController < ApplicationController
  def new
  	@product = Product.find_by(id: params[:format])
  	@order = Order.new
  end

  def create
  	@order = Order.new(order_params)
  	@order.save
    PurchaseMailer.send_when_purchase(@order).deliver
  	redirect_to user_path(@order.user_id)
  end

    private
  	def order_params
  		params.require(:order).permit(:first_name, :last_name, :phone, :email, :address1, :address2, :user_id, :product_id)
  	end
end
