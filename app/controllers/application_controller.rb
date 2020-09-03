class ApplicationController < ActionController::Base
  around_action :switch_locale

  def switch_locale(&action)
    locale = params[:lang] || I18n.default_locale
    I18n.with_locale(locale, &action)
  end

  def default_url_options
    { lang: I18n.locale }
  end
end
