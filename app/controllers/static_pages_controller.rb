class StaticPagesController < ApplicationController
  include LanguageSwitchable

  http_basic_authenticate_with :name => "pat_admin", :password => "Admin_Area_PAT_Password", only: :admin

  def about
  end

  def contact
  end

  def home
  end

  def question_1
  end

  def question_2
    @val_1 = params[:val_1].to_i
  end

  def screening
    @val_1 = params[:val_1].to_i
    @val_2 = params[:val_2].to_i
  end

  def admin
    @visits = Ahoy::Visit.order(started_at: :desc)
  end
end
