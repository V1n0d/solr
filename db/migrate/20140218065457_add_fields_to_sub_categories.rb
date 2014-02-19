class AddFieldsToSubCategories < ActiveRecord::Migration
  def change
  	change_table :sub_categories do |c|
  		c.references :category
  	end
  end
end
