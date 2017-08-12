class Event

attr_reader :id, :name, :price, :tickets_available
attr_writer :id

    def initialize(params = {})
        validate_arguments(params)
        id = nil
        @name = params.fetch(:name)
        @price = params.fetch(:price)
        @tickets_available = params.fetch(:tickets_available)
    end

    private

    def validate_arguments(params)
        raise ArgumentError.new("Event requires price to be greater than 0") if params.fetch(:price) <= 0
        raise ArgumentError.new("Event requires available tickets to be 0 or greater") if params.fetch(:tickets_available) < 0
    end
end
