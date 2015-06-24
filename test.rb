

class InFrame 
      def initialize(userInput)
        @input = userInput
        @words_array = @input.split
      end




	def print 
	  lengths_array = sort
	  lengths_array[0].times do
	    print "*"
	  end

	  puts ""
	  
	  for x in @words_array do
	    print "x "
	    print "#{x}"
	    print " x"
	    puts ""
	    lengths_array[0].times do
	      print "*"
	    end
          end
	end




	def find_longest_word
	  lengths_array = Array.new
       	  @words_array.each do |word|
	    lengths_array << word.length
	  end
	  return lengths_array
        end

	def sort
	  lengths_array = find_longest_word
	  lengths_array.length.times do 
	    for x in (0..lengths_array.length) do
	
	      if lengths_array[x] < lengths_array[x+1]
	        temp = lengths_array[x]
	        lengths_array[x] = lengths_array[x+1]
	        lengths_array[x+1] = temp
	      end   
	    end
	  end
	end
end


print "What would you like to print: "

user_input = gets
user_input.to_s
display = InFrame.new(user_input)

puts display.find_longest_word

