class HomeController < ApplicationController
  def index
    
  end

  def menu
    if params[:section]
      @food_items = FoodItem.find_by_section(params[:section]).order(params[:sort_by])
    elsif params[:search]
      @food_items = FoodItem.search(params[:search]).order(params[:sort_by])
    elsif params[:sort_by]
      @food_items = FoodItem.all.order(params[:sort_by])
    else
      @food_items = FoodItem.all
    end
  end

  def contact_us
  end
end
