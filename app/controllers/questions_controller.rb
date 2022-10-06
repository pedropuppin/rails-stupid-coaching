class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_input = params[:user_question].capitalize
    @answer = coach_answer(@user_input)
  end

  private

  def coach_answer(question)
    if question == "I am going to work"
      'Great!'
    elsif question[-1] == "?"
      "Silly question, get dressed and go to work"
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
