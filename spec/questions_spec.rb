require 'Questions'
describe Question do
  q=Question.new
  it "should return the first question from array" do
    expect(q.list[0]).to eq("¿Cuál es el código internacional para Bolivia?")
  end

  it "should return all posibles answers from a question" do
    expect(q.answers[q.list[0]]).to eq(["BO", "BR", "CO", "NINGUNA ES CORRECTA"])
  end
  it "should return the correct answer" do
    expect(q.correctAnswer[q.list[0]]).to eq("BO")
  end

  it "should return incorrect if the incorrect answer" do
    incorrect=q.evalueAnswer(q.list[0],"BR")
    expect(incorrect).to eq("incorrect")
  end
  it "should return the third question from array" do
    expect(q.list[2]).to eq("¿En que año se jugaron las primeras olimpiadas mundiales?")
  end
  it "should return the correct answer from third question"do
    expect(q.correctAnswer[q.list[2]]).to eq(1896)
  end
  it "should return correct if the correc answer for a question" do
    quest=q.list[3]
    ans=q.answers[quest]
    expect(q.evalueAnswer(quest,ans[2])).to eq("correct")
  end
  it "should return empty score at the begining" do
    expect(q.score).to eq(0)
  end
  it "should add 20 points for correct answer" do
    quest=q.list[4]
    ans=q.answers[quest][3]
    q.reply(quest,ans)
    expect(q.score).to eq(20)
  end
  it "should not modify score if incorrect answer" do
    q=Question.new
    quest=q.list[4]
    ans=q.answers[quest][2]
    q.reply(quest,ans)
    expect(q.score).to eq(0)
  end

  it "should return four lives to start the game" do
    q=Question.new
    expect(q.lives).to eq(4)
  end

  it "return you lost if life is zero" do
    q=Question.new
    expect(q.evaluegame(0)).to eq("You Lose")
  end

  it "lose a life when the answer is wrong" do
    q = Question.new
    quest=q.list[4]
    ans=q.answers[quest][2]
    q.reply(quest,ans)
    expect(q.lives).to eq(3)
  end

  it "End the game if you lose" do
    q=Question.new
    q.loseOneLife
    expect(q.finished?).to eq(false)
  end

  it "Check if game is finished when do a reply" do
    q=Question.new
    quest=q.list[4]
    ans=q.answers[quest][2]
    expect(q.reply(quest,ans)).to eq(false)


  end

end
