require 'Questions'
describe Question do
  it "should return the first question from array" do
    q=Question.new
    expect(q.list[0]).to eq("¿Cuál es el código internacional para Bolivia?")
  end

  it "should return all posibles answers from a question" do
    q = Question.new
    expect(q.answers[0]).to eq(["BO", "BR", "CO", "NINGUNA ES CORRECTA"])
  end
  it "should return the correct answer" do
    q= Question.new
    expect(q.correctAnswer[0]).to eq("BO")
  end

  it "should return incorrect if the incorrect answer" do
    q= Question.new
    incorrect=q.evalueAnswer("BR")
    expect(incorrect).to eq("incorrect")
  end


end
