class ProductsController < ApplicationController
  before_action :authenticate_admin!, only:[:new]
  add_breadcrumb 'Home', :root_path
  add_breadcrumb 'Collection', :products_path


  def index
  	@products = Product.page(params[:page]).per(50).order("created_at desc")
  end


  def show
  	@product = Product.find(params[:id])
  	add_breadcrumb @product.title
  end


  def new
  	@product = Product.new
  end


  def create
  	@product = Product.new(product_params)
  	@product.save
  	redirect_to admin_path(@product.admin_id)
  end
  

  private
    def product_params
      params.require(:product).permit(:title, :price, :description, :admin_id, :category_id, images_images: [])
    end
end
