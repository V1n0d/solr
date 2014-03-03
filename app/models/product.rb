class Product < ActiveRecord::Base
	belongs_to :sub_category
	has_many :product_attributes

	searchable :auto_index=>true do 
		text :name, :as => :name_textp
		text :description, :as => :description_textp 
    integer :sub_category_id 
		integer :price 
		integer :category_id do
			sub_category.category.id
		end
		string :product_attr_search 
	end

	def product_attr_search
    self.product_attributes.map{|item| item.key + ',' + item.value}.join(',')
  end

end
