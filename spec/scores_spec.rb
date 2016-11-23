require 'Scores'
describe Scores do
  
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
    firstLine=File.open('./public/records.txt', &:readline)
    expect(firstLine).to eq("howard 100\n")
  end
end