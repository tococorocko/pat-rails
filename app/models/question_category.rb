class QuestionCategory < ApplicationRecord
  belongs_to :language
  has_many :questions
end
