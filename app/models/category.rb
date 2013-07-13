class Category < ActiveRecord::Base
  attr_accessible :name, :user_id, :item_id
  has_many :users
end
