class QuestionController < ApplicationController
  def answer
    @query = params[:your_message]
    @answer = question_answer(@query) if @query
  end

  def ask
  end

  def question_answer(your_message)
    if your_message.downcase == 'i am going to work right now!'
      ''
    elsif your_message.include?('?')
      'Stupid question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def question_answer_enhanced(your_message)
    answer = question_answer(your_message)
    if answer != ''
      if your_message.upcase == your_message
        "I can feel your motivation! #{answer}"
      else
        answer
      end
    else
      ''
    end
  end
end
