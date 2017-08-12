require 'spec_helper'
require 'map'

describe Map do
    let(:event) { double("event", :id= => nil, :id => 1, :name => "Ed Sheeran - Live", :price => 10, :tickets_available => 1000) }

    subject (:map) { described_class.new(20, nil) }

    context 'size' do
        it 'should be able to return the maps size' do
            expect(map.grid.size).to eq 20
        end
    end
    context 'storing' do
        it  'should be able to store an event at a location' do
            map.store_event(:event => event, :loc => ([4,2]))
            expect(map.grid[4][2]).to eq event
        end
    end
end
