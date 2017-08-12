class Map
  attr_reader :grid

  def initialize(n, location)
    @grid = {}
    range = 0 - n..n
    range.each do |ele|
      range.each { |num| @grid[[num, ele]] = location }.each { |e| e }
    end
  end

  def store_event(params = {})
    event = params.fetch(:event)
    grid_ref = params.fetch(:loc)
    @grid[grid_ref].add_event(event)
  end

  def events_at_location(params = {})
    x = params.fetch(:x)
    y = params.fetch(:y)
    @grid[[x, y]].list_events
  end
end
