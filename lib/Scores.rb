
class Scores
	def initialize
		@fileName="./public/records.txt"
		
	end
	def fileName(name)
		@fileName=name
	end
	
	def createFile()
		file=File.open(@fileName,"a")
		file.close
	end
	def records()
		records=[]
	
		File.readlines(@fileName).map do |line|
			line.lines.each do |line|
			  records << {:name => line.split(' ')[0], :points=> line.split(/[+, \n]+/)[1].to_i }
			end
		end
		records.sort_by { |hsh| hsh[:points] }.reverse
	end
	def getPosition(nickname)
		records=records()
		records.index {|x| x[:name] == "dhara"}+1
	end
	def saveScore(nickname, score)
		records=records()
		if (records.index {|x| x[:name] == nickname})
			records[records.index {|x| x[:name] == nickname}][:points]=score
		else
			records << {:name=> nickname, :points=> score}
			records=records.sort_by { |hsh| hsh[:points] }.reverse
		end
		File.open(@fileName, 'w') {|file| file.truncate(0) }

		File.open(@fileName, "w+") do |f|
		  	records.each { |element| f.puts(element[:name]+" "+element[:points].to_s) }
		end
		records[records.index {|x| x[:name] == nickname}][:name]+" "+records[records.index {|x| x[:name] == nickname}][:points].to_s
	end
end
