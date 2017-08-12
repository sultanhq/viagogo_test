require 'spec_helper'
require 'event'

describe Event do
  subject (:event) { described_class.new(:name => "Ed Sheeran - Live", :price => 10, :tickets_available => 1000) }

  context 'Event' do
    it 'should not have an Id on creation' do
      expect(event.id).to eq nil
    end

    it 'should be able to return the events name' do
      expect(event.name).to eq "Ed Sheeran - Live"
    end

    it 'should be able to return the events ticket price' do
        expect(event.price).to eq 10
    end

    it 'should be able to return the events tickets available' do
      expect(event.tickets_available).to eq 1000
    end
  end

end
