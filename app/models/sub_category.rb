class SubCategory < ActiveRecord::Base
	belongs_to :category
	has_many :products

	searchable :auto_index=>true do 
		integer :category_id
	end
end
