
class Scores
	def initialize
		@fileName="./public/records.txt"
		@records=[]
	end
	
	def createFile(name)
		file=File.open(name,"a")
		file.close
	end
	def records()
		records=[]
	
		File.readlines(@fileName).map do |line|
			line.lines.each do |line|
			  records.push(line.split(/\n/))
			end
		end
		records
	end
end
