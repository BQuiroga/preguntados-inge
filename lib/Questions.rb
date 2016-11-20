require_relative 'Question'
class Questions
  def initialize(n)
    @name = n
    @questions = Array.new(3) {Question.new("",[],"")}
  end
  def name
    @name
  end
  def question
    @questions
  end
  def correctAnswer(quest)
    for i in(0..3)
      if(@questions[i].question == quest)
        return @questions[i].correctAnswer
      end
    end
  end
  def posibleAnswers(quest)
    for i in(0..3)
      if(@questions[i].question == quest)
        return @questions[i].answers
      end
    end
  end
  def data(q,a,c,i)
    @questions[i].setQuestion(q)
    @questions[i].setAnswers(a)
    @questions[i].setAnswer(c)
  end
  def getQuestion(i)
    return @questions[i].question
  end
end
