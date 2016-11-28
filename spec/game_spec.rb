require 'Game'
require 'Scores'
describe Game do
  before(:each) do
    @g=Game.new
    @g.bank.initQuestions
    @fileName="./spec/ScoresTest.txt"
    @g.bestScores.fileName(@fileName)
    File.open(@fileName, 'w') {|file| file.truncate(0) }
    records=[]
    records << {:name => "howard", :points=> 100}
    records << {:name => "dhara", :points=> 10}
    File.open(@fileName, "w+") do |f|
        records.each { |element| f.puts(element[:name]+" "+element[:points].to_s) }
    end
  end

  it "should return empty score at the begining" do
    expect(@g.score).to eq(0)
  end
  it "should return four lives to start the game" do
    expect(@g.lives).to eq(4)
  end
  it "should let respond two questions at the same category starting the game" do
    expect(@g.initialCategoryQuestions).to eq(2)
  end
  it "should change category when player responds two questions" do
    answer="incorrect answer for all"
    @g.reply("Deportes","¿Cuántos jugadores componen un equipo de rugby?", answer)
    @g.reply("Deportes","¿Quién ganó el mundial de fútbol del año 2002?", answer)
    expect(@g.initialCategoryQuestions).to eq(0)
  end
  it "should add 20 points for correct answer" do
    answer = @g.correctAnswer("Deportes","¿Cuántos jugadores componen un equipo de rugby?")
    @g.reply("Deportes","¿Cuántos jugadores componen un equipo de rugby?", answer)
    expect(@g.score).to eq(20)
  end

  it "should not modify score if incorrect answer" do
    @g.reply("Deportes","¿Cuántos jugadores componen un equipo de rugby?", "11")
    expect(@g.score).to eq(0)
  end

  it "lose a life when the answer is wrong" do
    @g.reply("Deportes","¿Cuántos jugadores componen un equipo de rugby?", "11")
    expect(@g.lives).to eq(3)
  end

  it "check if game is finished when do a reply" do
   @g.reply("Deportes","¿Cuántos jugadores componen un equipo de rugby?", "11")
   expect(@g.finished?).to eq(false)
  end

  it "shoul return you lost if life is zero" do
    answer="incorrect answer for all"
    @g.reply("Deportes","¿Cuántos jugadores componen un equipo de rugby?", answer)
    @g.reply("Deportes","¿Quién ganó el mundial de fútbol del año 2002?", answer)
    @g.reply("Deportes","¿Dónde se inventó el tenis de mesa?", answer)
    @g.reply("Deportes","¿Cuántos jugadores componen un equipo de rugby?", answer)
    expect(@g.evaluegame).to eq("You Lose")
  end

  it "should return the default nickname" do
    expect(@g.nickname).to eq("no_name")
  end

  it "should return the nickname chosed by the player" do
    @g.choseNickname("TheNameChosed")
    expect(@g.nickname).to eq("TheNameChosed")
  end
  

  it "should exist records.txt file in public folder" do
    @g.bestScores.createFile()
    expect(File).to exist(@fileName)
  end

  it "should load all records order by points decresent " do
    records=@g.bestScores.records()
    expect(records).to eq([{:name=>"howard", :points=>100}, {:name=>"dhara", :points=>10}])
  end

  it "should return the position of a player" do
    position=@g.bestScores.getPosition("dhara")
    expect(position).to eq(2)
  end
  it "should save the nickname and score of a player" do
    scoreString =@g.bestScores.saveScore("dhaa",2)
    expect(scoreString).to eq("dhaa 2")
  end
end
