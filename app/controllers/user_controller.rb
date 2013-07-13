class UserController < ApplicationController
  def show
    @items = current_user.items
    @categories = current_user.categories
  end
end
