require 'spec_helper'
require 'map'

describe Map do
    subject (:map) { described_class.new(20, nil) }

    context 'size' do
        it 'should be able to return the maps size' do
            expect(map.grid.size).to eq 20
        end
    end
end
