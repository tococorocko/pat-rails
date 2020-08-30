class QuestionsController < ApplicationController
  def index
    @question_categories = QuestionCategory.all.sort_by { |category| category.sort_order }
  end
end
