class Location

    attr_reader :capacity

    def initialize(params = {})
        validate_arguments(params)
        @events= []
        @capacity = params.fetch(:capacity)
    end

    def add_event(event)
        if (check_if_space_available)
            store_event(event)
        else
            error_text = "Location requires capacity to be 0 or greater"
            raise (error_text)
        end
    end

    def list_events
        @events
    end

    private

    def store_event(event)
        @events << event
    end

    def check_if_space_available
        @events.size < @capacity
    end

    def validate_arguments(params)
        raise ArgumentError.new("Location requires capacity to be 0 or greater") if params.fetch(:capacity) < 0
    end
end
