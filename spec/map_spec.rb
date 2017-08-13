require 'spec_helper'
require 'map'

describe Map do
    let(:event_1) { double("event_1", :id= => nil, :id => 1, :name => "Ed Sheeran - Live", :price => 10, :tickets_available => 100) }
    let(:event_2) { double("event_2", :id= => nil, :id => 2, :name => "The Killers", :price => 100, :tickets_available => 100) }
    let(:event_3) { double("event_3", :id= => nil, :id => 3, :name => "Floyd Mayweather", :price => 10, :tickets_available => 1300) }
    let(:event_4) { double("event_4", :id= => nil, :id => 4, :name => "Reading Festival", :price => 100, :tickets_available => 1600) }
    let(:event_4) { double("event_4", :id= => nil, :id => 4, :name => "Little Mix", :price => 40, :tickets_available => 700) }
    let(:event_5) { double("event_5", :id= => nil, :id => 5, :name => "Darts Championship", :price => 80, :tickets_available => 700) }
    let(:event_6) { double("event_6", :id= => nil, :id => 6, :name => "England vs Austrailia", :price => 70, :tickets_available => 100) }
    let(:event_7) { double("event_7", :id= => nil, :id => 7, :name => "Elbow", :price => 50, :tickets_available => 500) }
    let(:event_8) { double("event_8", :id= => nil, :id => 8, :name => "Harry Potter", :price => 5, :tickets_available => 10) }
    let(:event_9) { double("event_9", :id= => nil, :id => 9, :name => "Ed Motta", :price => 10, :tickets_available => 200) }
    let(:event_10) { double("event_10", :id= => nil, :id => 10, :name => "Micky Flanagan", :price => 12, :tickets_available => 1000) }
    let(:event_list) { double("event_list", :events => [:event_1,:event_2,:event_3,:event_4,:event_5,:event_6,:event_7,:event_8,:event_9,:event_10]) }
    let(:location) { double("location", :events => [] )}
    grid_range = 10

    subject (:map) { described_class.new(grid_range, location, event_list) }

    context 'details' do
        it 'should be able to return the maps size' do
            allow(location).to receive(:add_event).exactly(10).times
            allow(location).to receive(:list_events).and_return (1)
            allow(event_list).to receive(:number_of_events).and_return (10)
            grid_size = (grid_range*2+1)*(grid_range*2+1)
            expect(map.grid.size).to eq grid_size
        end
    end
    context 'storing' do
        it  'should be able to store all events in locations' do
            allow(location).to receive(:add_event).exactly(10).times
            allow(location).to receive(:list_events).and_return (1)
            allow(event_list).to receive(:number_of_events).and_return (10)
            expect(map.number_of_events).to eq 10
        end
    end
end
