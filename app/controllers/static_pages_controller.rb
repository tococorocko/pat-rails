require "rake"
require "website_visit_handler"
class StaticPagesController < ApplicationController
  include LanguageSwitchable

  http_basic_authenticate_with name: "pat_admin", password: "Admin_Area_PAT_Password", only: :admin

  def about; end

  def contact; end

  def home; end

  def question1; end

  def question2
    @val_1 = params[:val_1].to_i
  end

  def screening
    @val_1 = params[:val_1].to_i
    @val_2 = params[:val_2].to_i
  end

  def admin
    WebsiteVisitHandler.write_to_visit_per_day
    @visits_per_day = VisitPerDay.all.order(date: :desc)
    @total_visits = VisitPerDay.sum(:number_of_visits)
    @visits = Ahoy::Visit.order(started_at: :desc).limit(25)
  end
end
