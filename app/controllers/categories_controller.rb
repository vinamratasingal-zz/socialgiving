class CategoriesController < ApplicationController
  def add 
    @category = Category.find(params[:id])
    current_user.categories << @category
    redirect_to current_user
  end
end
