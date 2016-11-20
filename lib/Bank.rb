require_relative 'Questions'

class Bank
    def initialize
      @sports = Questions.new("Deportes")
      @entertainment = Questions.new("Entretenimiento")
      @science = Questions.new("Ciencia")
      @geography = Questions.new("Geografía")
      @art = Questions.new("Arte")
      @history = Questions.new("Historia")
    end

    def initQuestions
      @sports.data("¿Cuántos jugadores componen un equipo de rugby?",["11","12","15","10"],"15",0)
      @sports.data("¿Quién ganó el mundial de fútbol del año 2002?",["Italia","España","Brasil","Francia"],"Brasil",1)
      @sports.data("¿Dónde se inventó el tenis de mesa?",["China","Japón","Korea del Sur","Inglaterra"],"Inglaterra",2)

      @entertainment.data("¿Quién es la mascota de SEGA?",["Sonic","Pac Man","Mario","Ryu"],"Sonic",0)
      @entertainment.data("¿Cómo se llama el pájaro símbolo de los Juegos del Hambre?",["Sinsajo","Lechuza","Llamas","Gale"],"Sinsajo",1)
      @entertainment.data("¿Qué quería comerse Alf?",["A Willy","A Lynn","Al gato","A las plantas"],"Al gato",2)

      @science.data("¿Cuál es el hueso más pequeño del cuerpo?",["El yunque","La falange","El estribo","Ninguna es correcta"],"El estribo",0)
      @science.data("¿Qué es un equino?",["Una vaca","Un antílope","Una oveja","Un caballo"],"Un caballo",1)
      @science.data("¿Donde están los meniscos?",["En las rodillas","En los codos","En la punta del pie","En el peroné"],"En las rodillas",2)

      @history.data("¿Cuál es la ciudad más antigua de América Latina?",["Caral","Valparaíso","Arequipa","La Paz"],"Caral",0)
      @history.data("¿Cuál de estos países no ha invadido nunca el Reino Unido?",["Malta","India","Bolivia","Jamaica"],"Bolivia",1)
      @history.data("¿Quién fue Luís XIV?",["Rey de Inglaterra","Rey de Alemania","Rey de España","Rey de Francia"],"Rey de Francia",2)

      @art.data("¿Quién es la autora de Los Juegos del Hambre?",["Blue Jeans","Suzanne Collins","Jordi Sierra i Fabra","Bono Bidari"],"Suzanne Collins",0)
      @art.data("¿Quién compuso la famosa canción Bohemian Rhapsody?",["John Lennon","Elton John","Freddie Mercury","David Bowie"],"Freddie Mercury",1)
      @art.data("¿Qué importante pieza de arte fue robada y guardada debajo de una cama hasta que se devolvió al Museo Louvre?",["Mona Lisa","Nacimiento de Venus","El reloj de noche","Niña con una perla"],"Mona Lisa",2)

      @geography.data("¿Entre qué dos países está el lago Titicaca?",["Bolivia y Perú","Bolivia y Paraguay","Bolivia y Brasil","Bolivia y Argentina"],"Bolivia y Perú",0)
      @geography.data("¿Dónde se encuentra la cordillera de Los Andes?",["Europa","Asia","Oceania","América"],"América",1)
      @geography.data("¿Cuál es el único país latinoamericano que tiene 2 lenguas oficiales?",["Brasil ","Paraguay","Argentina","Venezuela"],"Paraguay",2)
    end

    def sports
      @sports
    end
    def getQuestionSport(i)
      @sports.getQuestion(i)
    end

    def sportsName
      @sports.name
    end

    def sportsAnswers(quest)
      @sports.posibleAnswers(quest)
    end

    def sportsCorrectAnswer(quest)
      @sports.correctAnswer(quest)
    end

    def getQuestionEntertaiment(i)
      @entertainment.getQuestion(i)
    end

    def entertainmentAnswers(quest)
      @entertainment.posibleAnswers(quest)
    end

    def entertainmentCorrectAnswer(quest)
      @entertainment.correctAnswer(quest)
    end

    def getQuestionScience(i)
      @science.getQuestion(i)
    end

    def scienceAnswers(quest)
      @science.posibleAnswers(quest)
    end

    def scienceCorrectAnswer(quest)
      @science.correctAnswer(quest)
    end

    def getQuestionHistory(i)
      @history.getQuestion(i)
    end

    def historyAnswers(quest)
      @history.posibleAnswers(quest)
    end

    def historyCorrectAnswer(quest)
      @history.correctAnswer(quest)
    end

    def getQuestionArt(i)
      @art.getQuestion(i)
    end

    def artAnswers(quest)
      @art.posibleAnswers(quest)
    end

    def artCorrectAnswer(quest)
      @art.correctAnswer(quest)
    end

    def getQuestionGeography(i)
      @geography.getQuestion(i)
    end

    def geographyAnswers(quest)
      @geography.posibleAnswers(quest)
    end

    def geographyCorrectAnswer(quest)
      @geography.correctAnswer(quest)
    end
end
