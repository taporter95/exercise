

class InFrame
      #initailize class with input from user 
      def initialize(userInput)
        @input = userInput

	#take user input and split into array
        @words_array = @input.split
      end



	#Print frame with text
	def printFrame
	  #Get length of largest word 
	  length = to_num
	  
	  (length+2).times {print "*"}

	  puts ""
	  #print *, then print word, then spaces to fill, then *
	  for x in @words_array do
	    print "*"
	    print "#{x}"
	    section_length = (x.length)
	    while (section_length) < length
	      print " "
	      section_length += 1
	    end
	    print "*"
	    puts ""
	  end
	    (length+2).times do
	      print "*"
	    end
          puts ""
	end
	#Print text as an html doc
	def printhtml
	  puts "<!DOCTYPE html>"
	  puts "<html>"
	  for x in @words_array do
	    print "<p> #{x} </p>"
	    puts ""
	  end
	  puts "</body>"
	  puts "</html>"
	  puts ""
	end

	#put the lengths of each word into an array and find longest
	def to_num
	  nums = []
	  @words_array.each do |word|
	    nums << word.length
	  end
	  puts nums.max
	  return nums.max
	end
end

print "What would you like to print: "

userInput = gets
userInput.to_s
display = InFrame.new(userInput)

display.printFrame
display.printhtml
