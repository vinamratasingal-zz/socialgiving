class Foobar < ActiveRecord::Migration
  def change
    change_table(:users) do |t| 
      t.integer :item_id
      t.integer :category_id
    end
    
    change_table(:items) do |t| 
      t.integer :category_id
    end
  end
end
