class QuestionsController < ApplicationController
  def ask
  end

  def answer
    query = params[:blurt]

    if query.end_with?('?')
      @message = "Silly question, get dressed and go to work!"
    elsif query == "I am going to work"
      @message = "Great!"
    else
      @message = "I don't care, get dressed and go to work!"
    end

  end
end
