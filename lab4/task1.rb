class CashMachine
	
	  def initialize(const)
	    @ BALANCE_LIST = "lab4/Balance.txt"
	    if File.exist?(@ BALANCE_LIST)
	      @money=File.read(@ BALANCE_LIST).to_i
	    else @money=const
	    end
	  end
	
	  def deposit
	    puts "ATM accepts the following bills: \n 100 \n 500 \n 1000 \n 2000 \n 5000 \n You can deposit no more than 9900 at a time \n Your amount:"
	    amount=gets.to_i
	    if amount<100
	      puts "You entered the amount less than the minimum, please try again"
	    elsif amount>=100 && amount<10000
	      if amount%100==0
	        @money=@money+amount
	        File.write(@ BALANCE_LIST, @money, mode: "w")
	        puts "Your balance: #{@money}"
	      else
	        puts "You entered the wrong bill, please try again"
	      end
	    elsif amount>=10000
	        puts "You entered the amount that exceeds the maximum deposit at a time, please try again"
	    end
	    @money
	  end
	
	  def withdraw
	    puts "ATM dispenses the following bills: \n 100 \n 500 \n 1000 \n 2000 \n 5000 \n You can withdraw no more than 9900 at a time \n Enter your amount:"
	    amount=gets.to_i
	    if amount<100
	      puts "You entered the amount less than the minimum, please try again"
	    elsif amount>=100 && amount<10000
	      if amount%100==0
	        if amount<=@money
	          @money=@money-amount
	          File.write(@ BALANCE_LIST, @money, mode: "w")
	          puts "Your balance: #{@money}"
	        else
	          puts "You entered the amount that exceeds your current balance, please try again"
	        end
	      else
	        puts "You entered the wrong bill, please try again"
	      end
	    elsif amount>=10000
	        puts "You entered the amount that exceeds the maximum withdraw at a time, please try again"
	    end
	    @money
	  end
	
	  def balance
	    puts "Your balance: #{@money}"
	  end
	
	  def quit
	    File.write(@ BALANCE_LIST, @money, mode: "w")
	  end
	
	  def init
	    loop do
	      puts "Deposit money (Press D) \n Withdraw money (Press W) \n Check balance (Press B) \n Quit (Press Q)"
	      letter=gets.chomp.downcase
	      case letter
	      when "d"
	        @money=deposit
	      when "w"
	        @money=withdraw
	      when "b"
	        balance
	      when "q"
	        quit
	        break
	      else puts "No such command exists, please enter the correct letter"
	      end
	    end
	  end
	end
	
	CONST_MONEY = 100
	cashMachine = CashMachine.new(CONST_MONEY)
	cashMachine.init

