require './lib/event_list'
require './lib/event.rb'
require './lib/location.rb'
require './lib/map.rb'

events = [
event_1 = Event.new(:name => "The Killers", :price => 100, :tickets_available => 100),
event_2 = Event.new(:name => "Floyd Mayweather", :price => 10, :tickets_available => 1300),
event_3 = Event.new(:name => "Reading Festival", :price => 100, :tickets_available => 1600),
event_4 = Event.new(:name => "Little Mix", :price => 40, :tickets_available => 700),
event_5 = Event.new(:name => "Darts Championship", :price => 80, :tickets_available => 700),
event_6 = Event.new(:name => "England vs Austrailia", :price => 70, :tickets_available => 100),
event_7 = Event.new(:name => "Elbow", :price => 50, :tickets_available => 500),
event_8 = Event.new(:name => "Harry Potter", :price => 5, :tickets_available => 10),
event_9 = Event.new(:name => "Ed Motta", :price => 10, :tickets_available => 200),
event_10 = Event.new(:name => "Micky Flanagan", :price => 12, :tickets_available => 1000)
]

event_list = Event_List.new

events.each { |event|
    event_list.store_event(event)
}

map = Map.new(10, Location, event_list)

map.find_events_nearby(-4,2)
