class Response < ApplicationRecord

  # validate :not_duplicate_responses

  belongs_to(
    :respondent, 
    class_name: :User,
    foreign_key: :user_id,
    primary_key: :id
  )

  belongs_to(
    :answer_choice,
    class_name: :Answer,
    foreign_key: :answer_id,
    primary_key: :id
  )

  has_one :question, through: :answer_choice, source: :question

  private
  # def not_duplicate_responses
  #   # if :respondent.
  # end

  def sibling_responses
    self.question.responses
  end
end
