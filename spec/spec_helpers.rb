require './lib/gilded_rose'

def create_item_list 
  items = [
            Item.new(name="+5 Dexterity Vest", sell_in=10, quality=20),
            Item.new(name="Aged Brie", sell_in=2, quality=0),
            Item.new(name="Elixir of the Mongoose", sell_in=5, quality=7),
            Item.new(name="Sulfuras, Hand of Ragnaros", sell_in=0, quality=80),
            Item.new(name="Sulfuras, Hand of Ragnaros", sell_in=-1, quality=80),
            Item.new(name="Backstage passes to a TAFKAL80ETC concert", sell_in=15, quality=20),
            Item.new(name="Backstage passes to a TAFKAL80ETC concert", sell_in=10, quality=49),
            Item.new(name="Backstage passes to a TAFKAL80ETC concert", sell_in=5, quality=49)
        ]
end

def create_gildedRose_with_items
    create_item_list
    GildedRose.new(items)
end 