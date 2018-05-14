class QuestionsController < ApplicationController
  def ask

  end

  def answer
    # Depending on the question submitted, the answer section gives a certain answer
    # If the message is I am going to work, the coach will answer Great!
    # If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
    # Otherwise he will answer I don't care, get dressed and go to work!
    @question = params[:question] #???

    if @question
      if @question == "I am going to work"
        return @answer = "Great!"
      elsif @question.include? "?"
        return @answer = "Silly question, get dressed and go to work!"
      else
        return @answer = "I don't care, get dressed and go to work!"
      end
    else
      @answer = "There's no answer"
    end

  end
end
