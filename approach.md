# My Approach

I planned what I wanted to do in 25 minute blocks, taking 5 minutes afterwards to reflect on what I had acheived and plan what to do in the next block.

11-11:30.am || 25 mins || Plan
* Folder setup.
* Check RSpec is working.
* Install linter and Simplecov.
* Come back to planning.

Reflection
* Spent long time trying to read spec and work out how to only clone one folder (svn export  GildedRose-Refactoring-Kata/trunk/ruby)
* Only setting up folders now. (also v nervous about review).

11:30am || 25 mins || Plan
* Will now do what I set out to do in first section.
* Folders in a mix, created spec folder. Ran RSPec but errors outside 
* Created unit / feature folders in spec. Still not sure what’s going on - going back to criteria. 

12:00 Process Review.

1pm || 25 mins || Plan
* Get the green light in RSpec - still can’t locate file. Going back to previous project to see where this line of code was used before.
* Moved `require File.join(File.dirname(__FILE__), ‘gilded_rose.rb’)` to spec_helper.rb
* Come back to planning

Reflection
* Restarting with Ruby file as tests are all meant to be passing on startup.
* Started again, got green tests!
* Tried Bundle install, no gem file.
* Trying to git add copied folders, get below error message. Google says it’s problem with class. 
```
git add .
fatal: CRLF would be replaced by LF in .buildpath` 
```

14:07 || 25 mins || Plan
* Read through criteria
* Read through methods
* Play in IRB to see how programme works.

Reflection

```
gilded_rose = GildedRose.new(items)
 => #<GildedRose:0x00007fde450b32d8 @items=[
    #<Item:0x00007fde45099388 @name="+5 Dexterity Vest", @sell_in=10, @quality=20>, 
    #<Item:0x00007fde45099338 @name="Aged Brie", @sell_in=2, @quality=0>, 
    #<Item:0x00007fde450992e8 @name="Elixir of the Mongoose", @sell_in=5, @quality=7>, 
    #<Item:0x00007fde45099298 @name="Sulfuras, Hand of Ragnaros", @sell_in=0, @quality=80>, 
    #<Item:0x00007fde45099220 @name="Sulfuras, Hand of Ragnaros", @sell_in=-1, @quality=80>, 
    #<Item:0x00007fde45099068 @name="Backstage passes to a TAFKAL80ETC concert", @sell_in=15, @quality=20>, #<Item:0x00007fde45099018 @name="Backstage passes to a TAFKAL80ETC concert", @sell_in=10, @quality=49>, #<Item:0x00007fde45098fa0 @name="Backstage passes to a TAFKAL80ETC concert", @sell_in=5, @quality=49>]> 

2.6.0 :012 > gilded_rose.update_quality
 => [
    #<Item:0x00007fde45099388 @name="+5 Dexterity Vest", @sell_in=9, @quality=19>, 
    #<Item:0x00007fde45099338 @name="Aged Brie", @sell_in=1, @quality=1>, 
    #<Item:0x00007fde450992e8 @name="Elixir of the Mongoose", @sell_in=4, @quality=6>, 
    #<Item:0x00007fde45099298 @name="Sulfuras, Hand of Ragnaros", @sell_in=0, @quality=80>, 
    #<Item:0x00007fde45099220 @name="Sulfuras, Hand of Ragnaros", @sell_in=-1, @quality=80>, 
    #<Item:0x00007fde45099068 @name="Backstage passes to a TAFKAL80ETC concert", @sell_in=14, @quality=21>, #<Item:0x00007fde45099018 @name="Backstage passes to a TAFKAL80ETC concert", @sell_in=9, @quality=50>, #<Item:0x00007fde45098fa0 @name="Backstage passes to a TAFKAL80ETC concert", @sell_in=4, @quality=50>] 