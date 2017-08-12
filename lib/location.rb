class Location

    attr_reader :capacity

    def initialize(params = {})
        validate_arguments(params)
        @events= []
        @capacity = params.fetch(:capacity)
    end

    def add_event(event)
        begin
            store_event(event) if check_event_can_be_stored?(event)
        rescue Exception => e
            raise e.message
        end
    end

    def list_events
        @events
    end

    private

    def store_event(event)
        @events << event
    end

    def check_event_can_be_stored?(event)
        check_event_not_duplicate?(event)
        check_if_space_available?
    end

    def check_event_not_duplicate?(event)
        if @events.include?(event)
            error_text = "This event already exists at this location"
            raise (error_text)
        else
            true
        end
    end

    def check_if_space_available?
        if @events.size < @capacity
            true
        else
            error_text = "Location requires capacity to be 0 or greater"
            raise (error_text)
        end
    end

    def validate_arguments(params)
        raise ArgumentError.new("Location requires capacity to be 0 or greater") if params.fetch(:capacity) < 0
    end
end
