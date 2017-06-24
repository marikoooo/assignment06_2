class AdminsController < ApplicationController
  before_action :authenticate_admin!

  def show
  	@admin = Admin.find(params[:id])
  	@order = Order.all
  end
end
