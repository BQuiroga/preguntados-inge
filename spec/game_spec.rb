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
    question=@g.questions[@random]
    answer=@g.correctAnswer(question)
    @g.reply(question,answer)
    expect(@g.score).to eq(20)
  end
  it "should not modify score if incorrect answer" do
    question=@g.questions[2]
    answer=@g.posibleAnswers(question)[2]
    @g.reply(question,answer)
    expect(@g.score).to eq(0)
  end
  it "lose a life when the answer is wrong" do
    question=@g.questions[@random]
    answer="incorrect answer for all"
    @g.reply(question,answer)
    expect(@g.lives).to eq(3)
  end
  it "Check if game is finished when do a reply" do
    question=@g.questions[@random]
    answer=@g.posibleAnswers(question)[2]
    @g.reply(question,answer)
    expect(@g.finished?).to eq(false)
  end
  it "return you lost if life is zero" do
    answer="incorrect answer for all"
    question=@g.questions[@random]
    @g.reply(question,answer)
    @g.reply(question,answer)
    @g.reply(question,answer)
    @g.reply(question,answer)
    expect(@g.evaluegame).to eq("You Lose")
  end
end
