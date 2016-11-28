require_relative 'Bank'
require_relative 'Scores'
class Game
  def initialize
    @nickname
    @initialCategoryQuestions=2
    @score=0
    @lives=4

    
    @bank = Bank.new
    @bank.initQuestions
    @randomViews=["sports","entertainment","history","art","geography","science"]
    @bestScores=Scores.new
    @bestScores.fileName("./public/records.txt")

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

  def nickname
    @nickname
  end

  def randomViews(view)
    @randomViews[view]
  end

  def bestScores
    @bestScores
  end

  def fileName
    @fileName
  end

  def posibleAnswers(category, question)
    if(category == "Deportes")
      result=@bank.sportsAnswers(question)
    end

    if(category == "Entretenimiento")
      result=@bank.entertainmentAnswers(question)
    end

    if(category == "Ciencia")
      result=@bank.scienceAnswers(question)
    end

    if(category == "Historia")
      result=@bank.historyAnswers(question)
    end

    if(category == "Arte")
      result=@bank.artAnswers(question)
    end

    if(category == "Geografía")
      result=@bank.geographyAnswers(question)
    end
    result
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
      result=@bank.sportsCorrectAnswer(question)
    end

    if(category == "Entretenimiento")
      result=@bank.entertainmentCorrectAnswer(question)
    end

    if(category == "Ciencia")
      result=@bank.scienceCorrectAnswer(question)
    end

    if(category== "Historia")
      result=@bank.historyCorrectAnswer(question)
    end

    if(category == "Arte")
      result=@bank.artCorrectAnswer(question)
    end

    if(category == "Geografía")
      result=@bank.geographyCorrectAnswer(question)
    end
    result
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

  def choseNickname(name)
    @nickname = name
  end
end
