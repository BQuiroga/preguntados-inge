class Question
  @score
  @lives
  def initialize
    @score=0
    @lives=4
  end
  def score
    @score
  end
  def lives
    @lives
  end

  def evaluegame(lives)
    if(lives == 0)
      "You Lose"
    else
      "next question"
    end
  end
  def reply(question,answer)
    #r=evaluegame(@lives)
    #if (r != "You Lose")
      result=evalueAnswer(question,answer)
      if (result=="correct")
        @score+=20
      else
        @lives-=1
      end
    #end
  end
  def list
    ["¿Cuál es el código internacional para Bolivia?","¿En que año fue la revolucion de la independencia de Bolivia?","¿En que año se jugaron las primeras olimpiadas mundiales?","Como se llama el tigre del cereal Zucaritas?","Cuantos paises hay en el mundo?"]
  end
  def answers
    {list[0]=>["BO", "BR", "CO", "NINGUNA ES CORRECTA"],list[1]=>[1745,1800,1926,1825],list[2]=>[1790,1896,1996,2005],list[3]=>["Pancho","Fercho","Toño","Lucho"],list[4]=>[201,192,142,194]}
  end
  def correctAnswer
    ans =Hash.new
    ans[list[0]]="BO"
    ans[list[1]]=1825
    ans[list[2]]=1896
    ans[list[3]]="Toño"
    ans[list[4]]=194
    ans
  end
  def evalueAnswer(question,answer)
    if(answer==correctAnswer[question])
      "correct"
    else
      "incorrect"
    end
  end

end
