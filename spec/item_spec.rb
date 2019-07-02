require './lib/item'

describe "Item" do
    it "has name, sell_in and quality by default" do 
        expect{ Item.new }.to raise_error(ArgumentError)
    end  

    it "returns the item as a string" do 
        item = Item.new(name="Sulfuras, Hand of Ragnaros", sell_in=0, quality=80)
        expect(item.to_s()).to eq("Sulfuras, Hand of Ragnaros, 0, 80")
    end 
end 