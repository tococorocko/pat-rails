class ApplicationController < ActionController::Base
  around_action :switch_locale
  before_action :set_ovk_iframe_cookie

  def switch_locale(&action)
    locale = params[:locale] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  def default_url_options
    { locale: I18n.locale }
  end

  def set_ovk_iframe_cookie
    @ovk_iframe ||= cookies[:ovk_iframe]
    return if params[:ovk_iframe].blank? || @ovk_iframe.present?

    cookies[:ovk_iframe] = { value: "true", expires: 1.day.from_now }
    @ovk_iframe = true
  end
end
