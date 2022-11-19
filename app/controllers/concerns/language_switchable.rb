module LanguageSwitchable
  extend ActiveSupport::Concern

  included do
    before_action :set_show_language_switch
  end

  def set_show_language_switch
    @show_language_switch = true
  end
end
