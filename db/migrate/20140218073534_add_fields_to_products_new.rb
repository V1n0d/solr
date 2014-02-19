class AddFieldsToProductsNew < ActiveRecord::Migration
  def change
  	change_table :products do |c|
  		c.references :sub_category
  	end
  end
end
