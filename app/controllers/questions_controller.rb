class QuestionsController < ApplicationController
  include LanguageSwitchable

  def index
    lang = Language.find_by_name(params[:locale]) || "it"
    @negative_factors = QuestionCategory.where(language: lang)
                                        .where.not(name: "protection")
                                        .sort_by { |category| category.sort_order }
    @positive_factors = QuestionCategory.where(language: lang)
                                        .where(name: "protection")
                                        .sort_by { |category| category.sort_order }
  end
end
