class Reversed

	def initialize
		@str = ''
		@stra = []
		@rstr=''
		@rstra=[]
		greet
	end


	def greet
		puts "enter string to be reversed"
		str = gets.chomp
		@stra = @str.split('')
		for i in 0..str.length
			@rstra.push(@stra.pop(1))
		end
		puts @rstra

	end
end

rev = Reversed.new