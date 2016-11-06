require 'Game'
describe Game do
  before(:each) do
    @g=Game.new
    @random=[*0..4].sample
  end
  it "should return empty score at the begining" do
    expect(@g.score).to eq(0)
  end
  it "should return four lives to start the game" do
    expect(@g.lives).to eq(4)
  end
  it "should add 20 points for correct answer" do
    quest=@g.questions[@random]
    ans=@g.correctAnswer(quest)
    @g.reply(quest,ans)
    expect(@g.score).to eq(20)
  end
  it "should not modify score if incorrect answer" do
    quest=@g.questions[@random]
    ans=@g.posibleAnswers(quest)[2]
    @g.reply(quest,ans)
    expect(@g.score).to eq(0)
  end
  it "lose a life when the answer is wrong" do
    quest=@g.questions[@random]
    ans="incorrect answer for all"
    @g.reply(quest,ans)
    expect(@g.lives).to eq(3)
  end
  it "Check if game is finished when do a reply" do
    quest=@g.questions[@random]
    ans=@g.posibleAnswers(quest)[2]
    @g.reply(quest,ans)
    expect(@g.finished?).to eq(false)
  end
  it "return you lost if life is zero" do
    ans="incorrect answer for all"
    quest=@g.questions[@random]
    @g.reply(quest,ans)
    @g.reply(quest,ans)
    @g.reply(quest,ans)
    @g.reply(quest,ans)
    expect(@g.evaluegame).to eq("You Lose")
  end
end
