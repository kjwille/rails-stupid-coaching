class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    if @question.blank?
      @answer = "🤨"
    elsif @question.ends_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    elsif @question = "i am going to work right now!"
      @answer = "Great"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

end
