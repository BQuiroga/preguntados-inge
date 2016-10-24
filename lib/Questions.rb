class Question
  def questions
    q=["¿Cuál es el código internacional para Bolivia?","¿En que año fue la revolucion de la independencia de Bolivia?","¿En que año se jugaron las primeras olimpiadas?"]
    q
  end
  def ans
    ans=Hash.new
    ans[questions[0]]=["BO","BR","CB","Ninguna es correcta"]
    ans[questions[1]]=["1831","1945","1825","1950"]
    ans[questions[2]]=["1945","1896","2001","1836"]
    ans
  end
end
