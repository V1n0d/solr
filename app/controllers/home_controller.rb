class HomeController < ApplicationController
	skip_before_filter :verify_authenticity_token, :only => [:search]
  def index

  end

  def search

  	@results = Sunspot.search(Product,Category,SubCategory) do |q|
  		q.keywords params[:search]

  		if params[:price_from].present? && params[:price_to].present?
  			q.with(:price,params[:price_from].to_i..params[:price_to].to_i)
  		end

  		if params[:from]=="sub_category"
  			q.with(:sub_category_id,params[:id].to_i)
  		end

  		if params[:from]=="category"
  			q.with(:category_id,params[:id].to_i)
  		end
  	end
  	binding.pry
  end
end
