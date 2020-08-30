class AddressesController < ApplicationController
  def index
    @address_categories = AddressCategory.all.sort_by { |cateogry| cateogry.sort_order }
  end

  def show
    @address_category = AddressCategory.find(params[:category_id])
    @addresses = @address_category.addresses.sort_by { |category| category.name }
  end
end
