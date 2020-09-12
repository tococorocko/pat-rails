class QuestionsController < ApplicationController
  def index
    italian = Language.find_by_name("it")
    @negative_factors = QuestionCategory.where(language: italian)
                                        .where.not(name: "Fattori protettivi")
                                        .sort_by { |category| category.sort_order }
    @positive_factors = QuestionCategory.where(language: italian)
                                        .where(name: "Fattori protettivi")
                                        .sort_by { |category| category.sort_order }
  end
end
