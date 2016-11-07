class Questions
  def initialize
    @questions=["¿Cuál es el código internacional para Bolivia?",
                "¿En que año fue la revolucion de la independencia de Bolivia?",
                "¿En que año se jugaron las primeras olimpiadas mundiales?",
                "Como se llama el tigre del cereal Zucaritas?",
                "Cuantos paises hay en el mundo?"]
     @answers={questions[0]=>["BO", "BR", "CO", "NINGUNA ES CORRECTA"],
               questions[1]=>["1745","1800","1926","1825"],
               questions[2]=>["1790","1896","1996","2005"],
               questions[3]=>["Pancho","Fercho","Toño","Lucho"],
               questions[4]=>["201","192","142","194"]}
  end
  def questions
    @questions
  end
  def answers
    @answers
  end
  def posibleAnswers(question)
    @answers[question]
  end
  def correctAnswers
    ans =Hash.new
    ans[questions[0]]="BO"
    ans[questions[1]]="1825"
    ans[questions[2]]="1896"
    ans[questions[3]]="Toño"
    ans[questions[4]]="194"
    ans
  end
  def correctAnswerFrom(question)
    correctAnswers[question]
  end

end
