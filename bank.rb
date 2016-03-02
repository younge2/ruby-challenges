class Bank

def initialize
	@balance = 0
	@in = 0
	@opdone = ''
	@op = ''
	@done = false
	greet

end


	def greet
		puts "Welcome. Your current balance is"
		puts "#{@balance}"
		while (!@done) do
			puts "What would you like to do? (deposit, withdraw, check_balance)"
			@op=gets.chomp
			case @op
			when 'deposit'
				depos

			when 'withdraw' 
				withd

			when 'check_balance'
				check
			else 
				puts 'incorrect input'

			end

			puts "Are you done?"
			@opdone = gets.chomp
			case @opdone
			when 'yes'
				@done = true
			when 'no'
				@done = false
			else 
				"I don't understand. please type yes or no"
			end

				
		end		

	end

	

	def depos
		puts "How much would you like to deposit?"
				@in = gets.chomp
				@balance = Integer(@balance) + Integer(@in)
				puts "Your current balance is"
				puts @balance

	end

	def withd
		puts "How much would you like to withdraw?"
		@in = gets.chomp
		if Integer(@in)<Integer(@balance)
			@balance = Integer(@balance)-Integer(@in)
		else 
			puts "you don't have that much money"
		end

		puts "Your current balance is"
				puts @balance

	end

	def check
		puts "Your current balance is"
		puts @balance
	end

end

bank1 = Bank.new