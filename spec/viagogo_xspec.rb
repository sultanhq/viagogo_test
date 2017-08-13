# require 'spec_helper'
# require 'viagogo'
#
#
# xdescribe Viagogo do

    # event.new("event_1", :id= => nil, :id => 1, :name => "Ed Sheeran - Live", :price => 10, :tickets_available => 100)
    # event.new("event_2", :id= => nil, :id => 2, :name => "The Killers", :price => 100, :tickets_available => 100)
    # event.new("event_3", :id= => nil, :id => 3, :name => "Floyd Mayweather", :price => 10, :tickets_available => 1300)
    # event.new("event_4", :id= => nil, :id => 4, :name => "Reading Festival", :price => 100, :tickets_available => 1600)
    # event.new("event_4", :id= => nil, :id => 4, :name => "Little Mix", :price => 40, :tickets_available => 700)
    # event.new("event_5", :id= => nil, :id => 5, :name => "Darts Championship", :price => 80, :tickets_available => 700)
    # event.new("event_6", :id= => nil, :id => 6, :name => "England vs Austrailia", :price => 70, :tickets_available => 100)
    # event.new("event_7", :id= => nil, :id => 7, :name => "Elbow", :price => 50, :tickets_available => 500)
    # event.new("event_8", :id= => nil, :id => 8, :name => "Harry Potter", :price => 5, :tickets_available => 10)
    # event.new("event_9", :id= => nil, :id => 9, :name => "Ed Motta", :price => 10, :tickets_available => 200)
    # event.new("event_10", :id= => nil, :id => 10, :name => "Micky Flanagan", :price => 12, :tickets_available => 1000)
    # event.new("event_list", :events => [:event_1,:event_2,:event_3,:event_4,:event_5,:event_6,:event_7,:event_8,:event_9,:event_10]) }
#     let(:location) { double("location", :events => [] )}
#     let(:map) { double("map", :grid => {})}
#
#     subject (:viagogo) { described_class.new(map, event_list) }
#
#   xcontext 'App' do
#      it 'should have a list of events on creation' do
#          allow(map).to receive(:number_of_events).and_return (10)
#          subject.load_events(event_list)
#          expect(subject.number_of_events).to eq 10
#      end
#   end
# end
