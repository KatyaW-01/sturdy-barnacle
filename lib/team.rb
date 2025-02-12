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
        @roster.find_all do |roster|
            roster.contract_length > 24
        end
    end

    def short_term_players
        @roster.find_all do |roster|
            roster.contract_length <= 24
        end
    end

    def total_value_array
        @roster.map do |roster|
            roster.total_cost
        end
    end

    def total_value
        total_value_array.sum
    end

    def details
        details = {
            "total value" => total_value,
            "player count" => @roster.length
        }
        return details

    end

    def average_cost_of_player
        "$#{total_value/(@roster.length)}"
        #didnt have the time to figure out how to add commas to the number
    end

    def players_by_last_name_array
        @roster.sort_by do |roster|
            roster.last_name   
        end
    end

    def players_by_last_name
        players_by_last_name_array.map {|player| player.last_name }.join(", ")
        
    end
    
end