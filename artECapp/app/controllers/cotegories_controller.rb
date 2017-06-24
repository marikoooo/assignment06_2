class CategoriesController < ApplicationController
  def oil_painting
  	@categpry = category.find_by(params[:id])
  end

   def acrylic_painting
  	@categpry = category.find(params[:id])
  end

   def watercolor_painting
  	@categpry = category.find(params[:id])
  end

   def photography
  	@categpry = Category.find_by(name[:Photography])
  end

   def digital_printmarking
  	@categpry = category.find(params[:id])
  end

  def sculpture
  	@categpry = category.find(params[:id])
  end

  def show
  	@category = category.find(params[:id])
  end
end
