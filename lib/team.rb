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

    
end