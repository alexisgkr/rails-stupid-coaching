class CoachingController < ApplicationController


  def answer
    @answer = coach_answer(params[:query])
  end

  def ask
  end

  def coach_answer(query)
  if query == "I am going to work right now!"
    return ""
   elsif query.include? "?"
     return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(query)
  if query == "I am going to work right now!".upcase
    return ""
  elsif query == query.upcase
    return "I can feel your motivation! " + coach_answer(your_message)
  else
    return coach_answer(query)
  end
end

end
