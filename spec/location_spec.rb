require 'spec_helper'
require 'location'

describe Location do
    let(:event) { double("event", :id= => nil, :id => 1, :name => "Ed Sheeran - Live", :price => 10, :tickets_available => 1000) }
    let(:event_2) { double("event", :id= => nil, :id => 2, :name => "Foo Fighters", :price => 20, :tickets_available => 2000) }

    subject (:location) { described_class.new(:capacity => 1) }
    subject (:location_2) { described_class.new(:capacity => 2) }

    context 'details' do
        it 'should be able to return its capacity' do
            expect(location.capacity).to eq 1
        end
        it 'should not be able to have a capacity less than 0' do
            error_text = "Location requires capacity to be 0 or greater"
            expect{
                described_class.new(:capacity => -1)
            }.to raise_error(error_text)
        end

    end
    context 'events' do
        it 'should be able to store an event' do
            location.add_event(event)
            expect(location.list_events).to eq [event]
        end

        it 'should be able to store multiple events' do
            location_2.add_event(event)
            location_2.add_event(event_2)
            expect(location_2.list_events).to eq [event, event_2]
        end

        it 'should not be able to store the same event twice' do
            location_2.add_event(event)
            error_text = "This event already exists at this location"
            expect{location_2.add_event(event)}.to raise_error(error_text)
        end

        it 'should not be able to store an event when at already at capacity' do
            location.add_event(event)
            error_text = "Location requires capacity to be 0 or greater"
            expect{
                location.add_event(event_2)
            }.to raise_error(error_text)
        end

    end

end
