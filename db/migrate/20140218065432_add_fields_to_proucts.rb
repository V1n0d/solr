class AddFieldsToProucts < ActiveRecord::Migration
  def change
  	change_table :products do |p|
  		p.references :category
  	end
  end
end
