require 'Question'
describe Question do
  before(:each) do
    @q=Question.new("¿Cuál es el código internacional para Bolivia?",["BO", "BR", "CO", "NINGUNA ES CORRECTA"], "BO")
  end

  it "should return a question" do
    question = @q.question
    expect(question).to eq("¿Cuál es el código internacional para Bolivia?")
  end

  it "shoul return a answers" do
    answers = @q.answers
    expect(answers).to eq(["BO", "BR", "CO", "NINGUNA ES CORRECTA"])
  end

  it "should return correct  answer" do
    correct = @q.correctAnswer
    expect(correct).to eq("BO")
  end
end
