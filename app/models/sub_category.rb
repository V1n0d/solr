class SubCategory < ActiveRecord::Base
	belongs_to :category
	has_many :products

	searchable :auto_index=>true do 
		text :name
		text :description
		integer :category_id
	end
end
