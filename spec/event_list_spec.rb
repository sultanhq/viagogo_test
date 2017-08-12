require 'spec_helper'
require 'event_list'

describe Event_List do
    let(:event) { double("event", :id= => nil, :id => 1, :name => "Ed Sheeran - Live", :price => 10, :tickets_available => 1000) }
    subject (:event_list) { described_class.new() }

    context 'Event list' do
        it 'Event list should be empty on creation' do
            expect(event_list.number_of_events).to eq 0
        end

        it 'Event list should be able to store an event' do
            event_list.store_event(event)
            expect(event_list.number_of_events).to eq 1
        end

        it 'Event should have id once stored' do
            event_list.store_event(event)
            expect(event_list.events.first.id).to eq 1
        end
    end

end
