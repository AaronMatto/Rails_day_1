class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @question = params[:user_q]
    @coach_ans = ""
    if @question.include? "?"
      @coach_ans = "Silly question, get dressed and go to work fam!"
    elsif @question == "I am going to work"
      @coach_ans = "Great!"
    else
      @coach_ans = "I don't care, get dressed and go to work cuz!"
    end
  end
end
