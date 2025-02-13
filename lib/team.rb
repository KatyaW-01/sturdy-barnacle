require 'pry'
class Team
    attr_reader :name, :city, :roster
    def initialize (name, city)
        @name = name
        @city = city

        @roster = []


    end
    def player_count
        @roster.length
    end

    def add_player(player)
        @roster << player
    end

    def long_term_players
        @roster.find_all do |player|
            player.contract_length > 24
        end
    end

    def short_term_players
        @roster.find_all do |player|
            player.contract_length <= 24
        end
    end

    def total_value
        @roster.map {|player| player.total_cost}.sum
    end

    #@roster.sum do |player|
        #player.total_cost
    #end

    #this would work for total_value as well ^^


    def details
        {"total value" => total_value, "player count" => @roster.length}
    end


    def average_cost_of_player
        average = total_value / player_count

        formatted_average = ""

        average.digits.each_with_index do |digit, index|
            formatted_average = digit.to_s + formatted_average
            if (index +1) % 3 == 0
                formatted_average = "," + formatted_average
            end
        end 
        "$#{formatted_average}"
    end


    def players_by_last_name_array
        @roster.sort_by do |player|
            player.last_name   
        end
    end

    def players_by_last_name
        players_by_last_name_array.map {|player| player.last_name }.join(", ")
        
    end
    
end