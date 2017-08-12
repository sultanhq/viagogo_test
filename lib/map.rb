class Map

attr_reader :grid

    def initialize(n, val)
        @grid = Array.new(n) { Array.new(n) { val } }
    end
    
    def store_event(params = {})
        grid_ref = params.fetch(:loc)
        @grid[grid_ref[0]][grid_ref[1]] = params.fetch(:event)
    end

end
