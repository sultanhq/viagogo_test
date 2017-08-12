class Map

attr_reader :grid

    def initialize(n, val)
        @grid = Array.new(n) { Array.new(n) { val } }
    end

end
