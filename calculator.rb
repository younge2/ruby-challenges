class Calculator


def initialize 
	@op = ''
	@in1 = 0
	@in2 = 0
	@res = 0
	greet

end

def greet 
	puts "Welcome to Calculator what would you like to do? (add, sub, mult, div)"
	@op = gets.chomp
	puts "What is number 1?"
	@in1 = gets.chomp
	puts "What is number 2?"
	@in2 = gets.chomp

	puts @op

	case @op
	when 'add'
		add
	when 'sub'
		subtr
	when 'mult'
		mult
	when 'div'
		div
	else 
		puts "incorrect input"
	end

	puts "your result is #{@res}"

end

def add
	@res = Integer(@in1) + Integer(@in2)
end

def subtr
	@res = Integer(@in1) - Integer(@in2)
end

def mult
	@res = Integer(@in1) * Integer(@in2)
end

def div
	@res = Integer(@in1) / Integer(@in2)
end
end


calc = Calculator.new