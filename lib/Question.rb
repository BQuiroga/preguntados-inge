class Question
  def initialize(q,a,c)
    @question = q
    @answers = a
    @correct = c
  end
  def question
    @question
  end
  def answers
    @answers
  end
  def correctAnswer
    @correct
  end

  def setQuestion(q)
    @question = q
  end
  def setAnswers(a)
    @answers = a
  end
  def setAnswer(c)
    @correct = c
  end
end
