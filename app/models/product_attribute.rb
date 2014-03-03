class ProductAttribute < ActiveRecord::Base
	belongs_to :product

	searchable :auto_index=>true do 
		string :key
		string :value
	end

end
