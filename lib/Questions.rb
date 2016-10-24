class Question
  def list
    ["¿Cuál es el código internacional para Bolivia?","¿En que año fue la revolucion de la independencia de Bolivia?","¿En que año se jugaron las primeras olimpiadas?"]
  end
  def answers
    [["BO", "BR", "CO", "NINGUNA ES CORRECTA"]]
  end
  def correctAnswer
    ["BO"]
  end
  def evalueAnswer(answer)
    if(answer=="BO")
      "correct"
    else
      "incorrect"
    end
  end

end
