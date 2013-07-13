class Item < ActiveRecord::Base
  attr_accessible :name, :description, :category_id, :user_id
  #follow a category 
  belongs_to :category
end
