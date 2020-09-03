class AddressCategoriesController < ApplicationController

  def valuation

  end

  def index
    @address_categories = AddressCategory.all.sort_by { |category| category.sort_order }
    valuation_factor = 0
    params[:question].each {|id, val| valuation_factor += val.to_i } if params[:question]
    if valuation_factor < 3
      render "index"
    elsif valuation_factor <= 5
      redirect_to :medium_risk
    else
      redirect_to :high_risk
    end

  end

  def medium_risk
    @addresses = Address.where(severity: severity("medium")).sort_by { |category| category.name }
  end

  def high_risk
    @addresses = Address.where(severity: severity("high")).sort_by { |category| category.name }

  end

  def show
    @address_category = AddressCategory.find(params[:category_id])
    @addresses = @address_category.addresses.
                                    where(severity: severity("standard")).
                                    sort_by { |category| category.name }
  end

  protected

  def severity(level)
    Severity.where(name: level)
  end
end
