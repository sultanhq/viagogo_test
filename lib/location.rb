class Location

attr_reader :capacity

    def initialize(params = {})
        validate_arguments(params)
        @capacity = params.fetch(:capacity)
    end

    private

    def validate_arguments(params)
        raise ArgumentError.new("Location requires capacity to be 0 or greater") if params.fetch(:capacity) < 0
    end
end
