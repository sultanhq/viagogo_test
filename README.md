## Design
I originally decided to use a web-based front end but later on in my project decided to just use a command line interface and removed the unrequired files.

## Approach

I first started this challenge by looking for the smallest object possible which I found was the event.

I also added validation for the events so that it would check if the event would have a positive price and that the number of tickets available was a zero or greater number.

The event list class allows me to uniquely number each event upon its addition to the list and return the list of Id'd events.

There are checks for the event list so that events could not be duplicated

In the map class where I made the assumption that if the app was to expand and allow multiple events at a location, I created a location object.

This Location object would contain the event objects, would have a parameter of a capacity, and is able to check if that event already existed at that location and if not,  whether it would fit.

At this point, I decided to change from an array of locations to a list of hashes which would allow me to store at each grid reference; a location with its events.

I was particularly pleased with the lines of code I produced which allow me to take the range that the world should operate in, and create a list of hashes which contained the grid references starting with a negative in their top corner down to a positive in the bottom right corner as exampled below:

```ruby
def create_grid(3, location_object)
    grid = {}
    range = (0 - world_range)..world_range
    range.each do |ele|
        range.each do |num|
            grid[[num, ele]] = location_object
        end
    end
end
```
Grid references for reference:

![grid_image](/images/grid.png)

I lastly got stuck when I had to find an algorithm to search through a list of objects which had grid references in a spiral search pattern, this was extremely difficult and from there it took a lot of time to try to find a
which I was not able to do so, therefore, I decided to write some pseudocode to explain my thinking.

## Instructions

Clone this repo and navigate to directory then run `$ bundle install`

Tests can be run by running `$ rspec`

App is not yet complete so running `$ ruby vuagogo.rb` will not will not return the expected result.


## Summary

While I feel that I have created most of the aspects required for the requirements, I feel that not being able to create the final searching of the locations disappointing, I have however added a small amount of pseudocode to the map object (in the private functions) which allows for some explanation of where I was planning to go with my code.

I also have realised (at the 11th hour) that I could refactor the program to not create every event location without an event object, but only create a 'venue' with a location(grid reference) and its event(s) which will make the program much more efficient and would allow returning what events base on their location far easier.

Another assumption I had made about the app which I was not able to implement due to the point which I was stuck was:
* That a user could possibly input a coordinate that was out of range of the current world in the app, I would mitigate this issue by giving the user a warning to tell them that they have inputted a location outside of the locations searchable.
