require 'location'
class Map
  attr_reader :grid

  def initialize(world_range, location, event_list)
    @locations = []
    @event_list = event_list
    @grid = {}
    @world_range = world_range
    range = (0 - world_range)..world_range
    range.each do |ele|
        range.each do |num|
            grid[[num, ele]] = Location.new(:capacity => 1)
        end
    end
    create_seed_locations(world_range)
    store_events_at_random_locations
  end

  def number_of_events
    @grid.count {|e| e[1].list_events.size > 0}
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

  def find_events_nearby(x,y)
      user_location = [x,y]
      close_locations_with_events = find_close_events(user_location)
      print_distance_from_user(close_locations_with_events, user_location)
  end

  private

  def print_distance_from_user(close_locations_with_events, user_location)
      #itterate over close_locations_with_events and return the distance
      #from user using manhattan distance calculation

  end

  def find_close_events(user_location)
      #psudo code:

      #find nearest events by spiralling out from the users location
      #Insert sprial algorithum here

      #Return list of close locations with events
  end



  def create_seed_locations(world_range)
    prng = Random.new
    @event_list.events.each do |_event|
      rand_x = prng.rand(0 - world_range..world_range)
      rand_y = prng.rand(0 - world_range..world_range)
      @locations << [rand_x, rand_y]
    end
  end

  def store_events_at_random_locations
        @locations.each_with_index { |e, i|
            store_event(:event => @event_list.events[i], :loc => e)
        }
  end

end
