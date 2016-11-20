require_relative 'Bank'
class Game
  def initialize
    @initialCategoryQuestions=2
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

    if(category == "Entretenimiento")
      @bank.entertainmentAnswers(question)
    end

    if(category == "Ciencia")
      @bank.scienceAnswers(question)
    end

  end

  def evaluegame
    if finished?
      "You Lose"
    else
      "Next Question"
    end
  end

  def reply(category,question,answer)
    @initialCategoryQuestions-=1
    evalueAnswer(category,question,answer)
  end
  def initialCategoryQuestions
    @initialCategoryQuestions
  end
  def correctAnswer(category, question)
    if(category == "Deportes")
      @bank.sportsCorrectAnswer(question)
    end

    if(category == "Entretenimiento")
      @bank.entertainmentCorrectAnswer(question)
    end

    if(category == "Ciencia")
      @bank.scienceCorrectAnswer(question)
    end

  end

  def evalueAnswer(category, question, answer)
    if(answer==correctAnswer(category,question))
      increaseScore
      "Correcto"
    else
      loseOneLife
      "Incorrecto"
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
