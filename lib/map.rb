class Map

attr_reader :grid

    def initialize(n, location)
        @grid = Array.new(n) { Array.new(n) { location } }
    end

    def store_event(params = {})
        event = params.fetch(:event)
        grid_ref = params.fetch(:loc)
        @grid[grid_ref[0]][grid_ref[1]].add_event(event)
    end

    def events_at_location(params = {})
        x = params.fetch(:x)
        y = params.fetch(:y)

        @grid[x[0]][y[1]].list_events
    end

end
