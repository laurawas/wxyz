class PagesController < ApplicationController
  def landing
    render :layout => 'landing'
  end
  
  def about
    render :layout => 'yellow_grid'
  end
  
  def lookbook
    
  end
  
  def collection
    render :layout => 'yellow_grid'
  end
  
  def group
    @pieces = ShopifyAPI::Product.all :params => {:limit => 250, :product_type => params[:group]}
  end
end
