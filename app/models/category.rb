class Category < ActiveRecord::Base
	has_many :sub_categories
	has_many :products, :through => :sub_categories

	searchable :auto_index=>true do 
		text :name
		text :description
	end
end
