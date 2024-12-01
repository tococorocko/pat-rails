class ApplicationController < ActionController::Base
  ALLOWED_ORGANIZATIONS = [
    "ti",
    "ovk",
    "zenso"
  ].freeze
  FALLBACK_ORGANIZATION = "ti".freeze

  around_action :switch_locale
  before_action :set_org_cookie

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  def default_url_options
    { locale: I18n.locale, org: @org }
  end

  # ovk, ti, zenso
  # ovk_iframe=1 => org=ovk (backwards compatibility)
  # org=zenso
  # org=ti
  def set_org_cookie
    @org ||= cookies[:org]
    return if @org.present?

    @org = ALLOWED_ORGANIZATIONS.include?(params[:org]) ? params[:org] : nil
    @org = "ovk" if params[:ovk_iframe]
    @org ||= FALLBACK_ORGANIZATION
    cookies[:org] = { value: @org, expires: 1.day.from_now }
  end
end
