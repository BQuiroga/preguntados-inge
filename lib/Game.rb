require_relative 'Questions'
class Game
  @score
  @lives
  @questions
  @answers
  def initialize
    @score=0
    @lives=4
    @questions=Question.new
  end
  def score
    @score
  end
  def lives
    @lives
  end
  def questions
    @questions.questions
  end
  def answers
    @questions.answers
  end
  def posibleAnswers(question)
    answers[question]
  end
  def evaluegame
    if finished?
      "You Lose"
    else
      "next question"
    end
  end
  def reply(question,answer)
    evalueAnswer(question,answer)
  end
  def correctAnswer(question)
    @questions.correctAnswer[question]
  end
  def response(answer)
    if answer
      "!!!correct!!!"
    else
      "incorrect :( "
    end
  end
  def evalueAnswer(question,answer)
    if(answer==correctAnswer(question))
      increaseScore
      true
    else
      loseOneLife
      false
    end
  end
  def finished?
    @lives == 0
  end
  def increaseScore
    @score+=20
  end
  def loseOneLife
    @lives -= 1
  end
end
