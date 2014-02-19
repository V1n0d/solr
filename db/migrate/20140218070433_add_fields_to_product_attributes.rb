class AddFieldsToProductAttributes < ActiveRecord::Migration
  def change
  	change_table :product_attributes do |c|
  		c.references :product
  	end
  end
end
