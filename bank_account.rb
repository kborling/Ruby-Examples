/ Example using instance methods /

class BankAccount
	/ Basically like a get method /
	attr_reader :balance

	attr_accessor :transactions

	/ Works with accessor /
	def transactions=(items)
		@transactions = items
	end

	/ Class Method /
	class << self
			/ Removes self. from each def /
		def create_for(first_name, last_name)
			/ ||= conditional assignment operator /
			@accounts ||= []
			@accounts << BankAccount.new(first_name, last_name)
		end

		/ Searches Account array for specified name /
		def find_for(first_name, last_name)
			@accounts.find{|account| account.full_name = "#{first_name} #{last_name}"}
		end
	end
	def initialize(first_name, last_name)
		@balance = 0
		@first_name = first_name
		@last_name = last_name
	end

	def full_name
		"#{@first_name} #{last_name}"
	end

	def deposit(amount)
		@balance += amount
	end

	def withdraw(amount)
		@balance -= amount
	end
	/ Returns current balance /
	def balance
		@balance
	end
	/ Public method that calls private reset! method /
	def call_the_reset_method
		reset!
	end

	/ Sets balance to 0 /
	/ Anything below is now private /
	private
	def reset!
		@balance = 0
	end
	/ Makes the method private /
	/ Or this --> private :reset! /
end

bank_account = BankAccount.new("Kevin", "Borling")
puts bank_account.inspect
