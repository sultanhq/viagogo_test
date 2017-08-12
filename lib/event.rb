class Event

attr_reader :id, :name, :price, :tickets_available
attr_writer :id

    def initialize(params = {})
        id = nil
        @name = params.fetch(:name)
        @price = params.fetch(:price)
        @tickets_available = params.fetch(:tickets_available)
    end

end
