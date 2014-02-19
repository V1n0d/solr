class ProductAttribute < ActiveRecord::Base
	belongs_to :product

	searchable :auto_index=>true do 
		string :key
		string :value
		text :product do
      product.name
    end
    integer :price do
    	product.price
    end
    	
	end

end
