require 'Questions'
describe Questions do
  before(:each) do
    @q=Questions.new("Historia")
  end

  it "should return a question from one position of array" do
    @q.data("¿Cuantos paises hay en el mundo?",["201","192","142","194"], "194", 0)
    expect(@q.getQuestion(0)).to eq("¿Cuantos paises hay en el mundo?")
  end

  it "should return the posibles answers from one question of array" do
    @q.data("¿Cuantos paises hay en el mundo?",["201","192","142","194"], "194", 0)
    expect(@q.posibleAnswers("¿Cuantos paises hay en el mundo?")).to eq(["201","192","142","194"])
  end

  it "should return the correct answer from one question of array" do
    @q.data("¿Cuantos paises hay en el mundo?",["201","192","142","194"], "194", 0)
    expect(@q.correctAnswer("¿Cuantos paises hay en el mundo?")).to eq("194")
  end

end
