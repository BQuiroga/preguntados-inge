require_relative 'Bank'
class Game
  def initialize
    @score=0
    @lives=4
    @bank = Bank.new
    @bank.initQuestions
  end

  def score
    @score
  end

  def lives
    @lives
  end

  def bank
    @bank
  end

  def posibleAnswers(category, question)
    if(category == "Deportes")
      @bank.sportsAnswers(question)
    end

  end

  def evaluegame
    if finished?
      "You Lose"
    else
      "next question"
    end
  end

  def reply(category,question,answer)
    evalueAnswer(category,question,answer)
  end

  def correctAnswer(category, question)
    if(category == "Deportes")
      @bank.sportsCorrectAnswer(question)
    end
  
  end

  def response(answer)
    if answer
      "!!!correct!!!"
    else
      "incorrect :( "
    end
  end

  def evalueAnswer(category, question, answer)
    if(answer==correctAnswer(category,question))
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
