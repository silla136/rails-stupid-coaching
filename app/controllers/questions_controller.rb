class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @user_ask = params[:question]

    if @user_ask.upcase == "I AM GOING TO WORK"
      @answer = "Great!"
    elsif @user_ask.include? "?"
      @answer =  "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end

  end
end
