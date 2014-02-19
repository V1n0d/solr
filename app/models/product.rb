class Product < ActiveRecord::Base
	belongs_to :sub_category
	has_many :product_attributes

	searchable :auto_index=>true do 
		text :name
		text :description
    integer :sub_category_id 
		integer :price 
		integer :category_id do
			sub_category.category.id
		end 
	end

end
