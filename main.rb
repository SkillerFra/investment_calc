require_relative 'compound'
require_relative 'simple_interest'

class Investcalc                                                         # class which takes all calc modules and creates a ui for user

    attr_accessor :percentage, :years , :investment

    include Compound
    include Simpleinterest

    def initialize(percentage, years, investment)                       #indicators for all the single calcs
        @percentage = percentage
        @years = years
        @investment = investment
    end

    def get_data                                                        #asks user for indicator input and prints out overview of indicators
        puts""
        puts "Amount of investment in USD($):"
        self.investment = gets.chomp.to_i
        puts""
        puts "Your expected annual interest rate in percent:"
        self.percentage = gets.chomp.to_i
        puts""
        puts"How many years of calculation rate you want to check?:"
        self.years = gets.chomp.to_i
        puts""
        return "You will check your investment with the following indicators:\nInvestment amount: #{investment}$\nAnual interest rate: #{investment}%\nCaluclation rate: #{years} years"
    end

    def calculation                                                     #actual ui for user
        puts""
        puts"**********Investment Calculator**********"
        puts""
        puts""
        puts"If you want to calculate compound interest please press 1. If you want to calculate simple interest please press 2"
        choice = gets.chomp.to_i
            if choice == 1
                puts""
                puts"You will now calculate compound interest."
                puts self.get_data
                puts self.results_compound_interest
            elsif choice == 2
                puts""
                puts"You will now calculate simple interest."
                puts self.get_data
                puts self.result_simple_interest
            end
    
    end


end

calculator = Investcalc.new(0,0,0)
puts calculator.calculation