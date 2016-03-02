class Guess
	def initialize
		@r = Random.new
		@num = @r.rand(0..100)
		@guess = 0
		@tries = 0
		greet
	end

	def greet
		puts "Guess a number between 1 and 100"
		@guess = gets.chomp
		case Integer(@guess)
		when 0..100
			@tries += 1
			go
		else
			stop
		end

	end

	def go
		if Integer(@guess)<@num
			puts "your guess is too low. Guess again"
			@guess = gets.chomp
			case Integer(@guess)
			when 0..100
				@tries +=1
				go
			else
				stop
			end
		elsif Integer(@guess)>@num
			puts "your guess is too high. Guess again"
			@guess = gets.chomp
			case Integer(@guess)
			when 0..100
				@tries +=1
				go
			else
				stop
			end
		else 
			@tries +=1
			puts "You guessed right in #{@tries} tries"
		end
	end

	def stop
		puts "incorrect input"
		greet
	end



end

guess = Guess.new