require 'Questions'
describe Questions do
  before(:each) do
    @q=Questions.new
    @random=[*0..4].sample
  end
  it "should return a question from array" do
    question =@q.questions[@random]
    result= @q.questions.include?(question)
    expect(result).to eq(true)
  end

  it "should return all posibles answers from question" do
    question = @q.questions[@random]
    posibleAnswers=@q.answers[question]
    expect(posibleAnswers).to eq(@q.posibleAnswers(question))
  end
  it "should return the correct answer from a question" do
    quest = @q.questions[@random]
    posible=@q.posibleAnswers(quest)
    correct=@q.correctAnswerFrom(quest)
    result= posible.include? (correct)
    expect(result).to eq(true)
  end
end
