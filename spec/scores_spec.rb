require 'Scores'
describe Scores do
  before(:each) do
    @fileName="./spec/ScoresTest.txt"
    File.open(@fileName, 'w') {|file| file.truncate(0) }
    records=[]
    records << {:name => "howard", :points=> 100}
    records << {:name => "dhara", :points=> 10}
    File.open(@fileName, "w+") do |f|
        records.each { |element| f.puts(element[:name]+" "+element[:points].to_s) }
    end
  end
  it "should write a record in the file" do
  @buffer = StringIO.new()
  @content = "howard 100"
  allow(File).to receive(:open).with(@fileName,'w').and_yield( @buffer )

  # call the function that writes to the file
  File.open(@fileName, 'w') {|f| f.write(@content)}

  # reading the buffer and checking its content.
  expect(@buffer.string).to eq(@content)
  end

  it "should read the first Line of records.txt" do
    firstLine=File.open(@fileName, &:readline)
    expect(firstLine).to eq("howard 100\n")
  end
end