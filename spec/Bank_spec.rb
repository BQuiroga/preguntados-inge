require 'Bank'

describe Questions do
  before(:each) do
    @b=Bank.new
    @b.initQuestions
  end

  it "should return one question from sports category" do
    expect(@b.getQuestionSport(0)).to eq("¿Cuántos jugadores componen un equipo de rugby?")
  end

  it "should return posible answers of one question from sports category" do
    expect(@b.sportsAnswers("¿Cuántos jugadores componen un equipo de rugby?")).to eq(["11","12","15","10"])
  end

  it "should return correct answer of one question from sports category" do
    expect(@b.sportsCorrectAnswer("¿Cuántos jugadores componen un equipo de rugby?")).to eq("15")
  end
end
