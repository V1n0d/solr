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

  		q.with(:sub_category_id,params[:id].to_i) if params[:from]=="sub_category"
  		q.with(:category_id,params[:id].to_i) if params[:from]=="category"

  	end
  	#binding.pry
  end
end
