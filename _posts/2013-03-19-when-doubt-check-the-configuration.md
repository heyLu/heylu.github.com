---
layout: post
title: When in doubt, check the configuration
---

# The problem

The values you submit to [graphite][] seem to be not received or to
change randomly.

# The solution

Either your retention settings (in `conf/storage-schemas.conf`) are
"wrong", i.e. your data is too "old" and being aggregated or dropped, or
you haven't migrated the existing whisper database to the new settings
(use `./bin/whisper-resize.py`).

# The story

At Spreadshirt, where I currently work as an intern, we use [graphite][]
for plotting performance data. I decided to use it because I had done a
few simple things with it (plotting via statsd) and because it's input
format is very simple (`some.fancy.reverse.domainname.like.name 42 1363721784\n`).

Pushing our data into graphite was indeed very simple, but it behaved
not as I was expecting: As a test, I was generating random numbers and
pushing a new one every second, but the resulting graph didn't pick up
the per-second data, instead the plot was jumping up and down each time
I would refresh the page.

After too many hours, after checking my code at least 10 times, putting
in various debug outputs, trying to change the data and starting to
believe that graphite wasn't capable of receiving per-second data, I
checked the configuration...

And that was indeed the solution to my problem: When I configured
graphite, I used the default configuration which specified a default
retention with 60 second accuracy and 7 day retention. Even though I
later changed that configuration and believed that graphite would pick
up the change, I did not migrate it's database.

(What is even worse is that I made the same mistake again, two weeks
after that: The config was something like `1m:7d,10m:14d,1h:30d`, which
means that because the test data I was working with was older than 14
days, the accuracy that I got was not 1 minute but actually per-hour.
Although it took me less time to notice what was happening, I first
spend too much time trying to track down the error in my own code.)

Next time:

* check the code *once*, but really thorough
* additionally: write tests, make sure that they work
* debug logically (i.e. through reasoning/narrowing down possible cases)
