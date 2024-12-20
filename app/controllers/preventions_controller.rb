class PreventionsController < ApplicationController
  HIGH_RISK = 6
  MEDIUM_RISK = 2

  before_action :set_selected_organization

  include LanguageSwitchable

  def index; end

  def evaluation
    valuation_factor = calculate_valuation_factor
    if valuation_factor > HIGH_RISK
      redirect_to :high_risk
    elsif valuation_factor > MEDIUM_RISK
      redirect_to :medium_risk
    else
      redirect_to :low_risk
    end
  end

  def low_risk; end

  def medium_risk; end

  def high_risk; end

  protected

  def calculate_valuation_factor
    valuation_factor = 0
    params[:question]&.each { |_id, val| valuation_factor += val.to_f }
    valuation_factor
  end

  def set_selected_organization
    @selected_organization = params[:org] || cookie_based_organization
    @selected_organization = if @selected_organization == "ovk"
                               @selected_ovk = "selected"
                               "ovk"
                             elsif @selected_organization == "zenso"
                               @selected_zenso = "selected"
                               "zenso"
                             else
                               @selected_ti = "selected"
                               "ti"
                             end
  end

  def cookie_based_organization
    @org.presence || "ti"
  end
end
