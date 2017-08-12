require 'spec_helper'
require 'event_list'

describe Event_List do
    let(:event) { double("event", :id= => nil, :id => 1, :name => "Ed Sheeran - Live", :price => 10, :tickets_available => 1000) }
    let(:event_2) { double("event", :id= => nil, :id => 2, :name => "Foo Fighters", :price => 20, :tickets_available => 2000) }
    let(:event_3) { double("event", :id= => nil, :id => 3, :name => "Manu Chao", :price => 5, :tickets_available => 100) }
    subject (:event_list) { described_class.new() }

    context 'Event list' do
        it 'Event list should be empty on creation' do
            expect(event_list.number_of_events).to eq 0
        end

        it 'Event list should be able to store an event' do
            event_list.store_event(event)
            expect(event_list.number_of_events).to eq 1
        end

        it 'Event list should be able to store multiple events' do
            event_list.store_event(event)
            event_list.store_event(event_2)
            event_list.store_event(event_3)
            expect(event_list.number_of_events).to eq 3
        end

        it 'Event should have id once stored' do
            event_list.store_event(event)
            expect(event_list.events.first.id).to eq 1
        end

        it "Events get unique id's once stored" do
            event_list.store_event(event)
            event_list.store_event(event_2)
            event_list.store_event(event_3)
            event_list.events.each_with_index { |elem, index|
                expect(elem.id).to eq index + 1
            }
        end
    end

end
