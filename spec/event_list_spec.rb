require 'spec_helper'
require 'event_list'

describe Event_List do
    subject (:event_list) { described_class.new() }

    context 'Event list' do
        it 'Event list should be empty on creation' do
            expect(event_list.number_of_events).to eq 0
        end
    end
end
