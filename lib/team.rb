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
end