#module for calculating compound interst and printing out userfriendly awnser.

module Compound

    def percent_calc                                                                             #coverts the user input to a usable percentage number for the calc
        percentage.to_f / 100 
    end

    def results_compound_interest                                                                #calcs the compound interest and prints out a user friendly awnser

        total = investment.to_f * (1.0 + percent_calc) ** years.to_f                             #actual calc is A = P(1+r/n)^nt
        total_final = total.round(2).to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse          #takes the result and converts it to a more readable output

        earnings = investment.to_f * (1.0 + percent_calc) ** years.to_f - investment.to_f        #actual calc but only the gained interest 
        earnings_final = earnings.round(2).to_s.reverse.gsub(/(\d{3})(?=\d)/, '\\1,').reverse    #takes the result and converts it to a more readable output

        puts""
        puts "With an average annual interest rate of #{self.percentage}% over #{self.years} years, your initial investment of #{self.investment}$ will be worth a total of #{total_final}$ with #{earnings_final}$ of interest earned."
    end
end

