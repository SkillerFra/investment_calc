#module for calculating simple interest and printing out userfriendly awnser. 

module Simpleinterest

  
    def percent_calc                                                                  #coverts the user input to a usable percentage number for the calc
        percentage.to_f / 100
    end

    def result_simple_interest                                                        #calcs the simple interest and prints out a user friendly awnser

        total = investment.to_f *  percent_calc * years.to_f + investment.to_f        #actual calc formula is FV = P(1+rt)
        total_final = total.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse        #takes the result and converts it to a more readable output

        earnings = investment.to_f *  percent_calc * years.to_f                       #actual formula but without the initial invest, so only the won interest
        earnings_final = earnings.to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse  #takes the result and converts it to a more readable output

        puts""
        puts "With an average annual interest rate of #{self.percentage}% over #{self.years} years, your initial investment of #{self.investment}$ will come to a final value of #{total_final}$, with #{earnings_final}$ of accumulated interest."
    end

end




