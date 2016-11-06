require 'Questions'
describe Question do
  before(:each) do
    @q=Question.new
    @random=[*0..4].sample
  end
  it "should return a question from array" do
    quest =@q.questions[@random]
    result= @q.questions.include?(quest)
    expect(result).to eq(true)
  end

  it "should return all posibles answers from question" do
    quest = @q.questions[@random]
    posible=@q.answers[quest]
    expect(posible).to eq(@q.posibleAnswers(quest))
  end
  it "should return the correct answer from a question" do
    quest = @q.questions[@random]
    posible=@q.posibleAnswers(quest)
    correct=@q.correctAnswer[quest]
    result= posible.include? (correct)
    expect(result).to eq(true)
  end
end
