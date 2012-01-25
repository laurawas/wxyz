class PagesController < ApplicationController
  def lookbook
    
  end
  
  def collection
    render :layout => 'yellow_grid'
  end
  
  def group
    @pieces = ShopifyAPI::Product.all(:product_type => params[:group])
  end
end