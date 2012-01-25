class PagesController < ApplicationController
  def lookbook
    
  end
  
  def collection
    render :layout => 'yellow_grid'
  end
  
  def group
    @pieces = ShopifyAPI::Product.all(:conditions => {:product_type => params[:group]})
  end
end
