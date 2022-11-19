class AddressCategoriesController < ApplicationController
  before_action :set_selected_organization

  include LanguageSwitchable

  def index
    valuation_factor = calculate_valuation_factor
    if valuation_factor > 6
      redirect_to :high_risk
    elsif valuation_factor > 2
      redirect_to :medium_risk
    else
      render "index"
    end
  end

  def medium_risk
  end

  def high_risk
  end

  protected

  def calculate_valuation_factor
    valuation_factor = 0
    params[:question]&.each { |_id, val| valuation_factor += val.to_i }
    valuation_factor
  end

  def set_selected_organization
    @selected_organization = params[:organization] || cookie_based_organization
    @selected_organization == "ovk" ? @selected_ovk = "selected" : @selected_ti = "selected"
  end

  def cookie_based_organization
    @ovk_iframe ? "ovk" : "ti"
  end
end
