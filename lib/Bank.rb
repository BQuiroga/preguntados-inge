require_relative 'Questions'

class Bank
    def initialize
      @sports = Questions.new("Deportes")
      @entertainment = Questions.new("Entretenimiento")
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
end
