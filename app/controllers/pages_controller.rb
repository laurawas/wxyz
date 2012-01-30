class PagesController < ApplicationController
  def landing
    
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
    @pieces = ShopifyAPI::Product.all(:conditions => {:product_type => params[:group]}).select { |p| p.product_type == params[:group] }
  end
end
