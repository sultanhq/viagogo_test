class Event_List

    attr_reader :events

    def initialize()
        @events = []
    end

    def number_of_events
        @events.size
    end

    def store_event(event)
        create_unique_event_id(event)
        @events << event
    end

    private

    def create_unique_event_id(event)
        event.id = self.number_of_events + 1
    end

end
