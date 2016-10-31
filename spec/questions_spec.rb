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
end
