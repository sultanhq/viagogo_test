require 'spec_helper'
require 'location'

describe Location do

    subject (:location) { described_class.new(:capacity => 1) }

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
end
