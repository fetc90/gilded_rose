require 'gilded_rose'

describe GildedRose do
    let(:subject) { described_class.new(item)}
    let(:item) { [Item.new("+5 Dexterity Vest", 10, 20)] }

  describe "#update_quality" do
    it 'does not change the item name' do
      expect { subject.update_quality() }.to_not change { item[0].name }
    end

    it 'decreases sell_in day by 1' do 
      expect { subject.update_quality() }.to change { item[0].sell_in() }.by(-1)
    end 

    it 'descreases quality by 1' do 
      expect { subject.update_quality() }.to change { item[0].quality() }.by(-1)
    end 

    it 'decreases quality by 2 after sell_in day is 0' do 
      10.times { subject.update_quality() }
      expect { subject.update_quality() }.to change { item[0].quality() }.by(-2)
    end 

    it 'the quality is never negative when sell_in in 0' do 
      30.times { subject.update_quality() }
      expect { subject.update_quality() }.to_not change { item[0].quality() }
    end 

    it 'the quality is more than 50' do 
      50.times { subject.update_quality() }
      expect { subject.update_quality() }.to_not change { item[0].quality() }
    end 

  end

  describe "Aged Brie" do 
    let(:item) { [Item.new("Aged Brie", 2, 0)] }

      it 'increases in quality the older it gets' do 
        expect { subject.update_quality() }.to change { item[0].quality() }.by(1)
    end 
  end 

  describe "Sulfuras, Hand of Ragnaros" do 
    let(:item) { [Item.new("Sulfuras, Hand of Ragnaros", 1, 80)] }

      it 'sell in number does not change' do 
        expect { subject.update_quality() }.to_not change { item[0].sell_in() }
      end  

      it 'does not change in quality' do 
        expect { subject.update_quality() }.to_not change { item[0].quality() }
      end 
  end 

  describe "Backstage Passes" do 
    let(:item) { [Item.new("Backstage passes to a TAFKAL80ETC concert", 15, 20)] }

      it 'increases in quality as sell in value decreases' do 
        expect { subject.update_quality() }.to change { item[0].quality() }.by(1)
      end  

      it 'quality increases by 2 when sell_in <= 10' do 
        5.times { subject.update_quality() }
        expect { subject.update_quality() }.to change { item[0].quality() }.by(2)
      end 

      it 'quality increases by 3 when sell_in <= 5' do 
        10.times { subject.update_quality() }
        expect { subject.update_quality() }.to change { item[0].quality() }.by(3)
      end 

      it 'quality is 0 when sell_in is -1' do 
        15.times { subject.update_quality() }
      expect { subject.update_quality() }.to change { item[0].quality() }.to(0)
     end 
  end 

  describe "Conjured Mana Cake" do 
    let(:item) { [Item.new("Conjured Mana Cake", 3, 6)] }
    # "Conjured" items degrade in Quality twice as fast as normal items
    it 'the quality decreases by 2' do 
      expect { subject.update_quality() }.to change { item[0].quality() }.by(-2)
    end 

  end 
end

describe Item do  
  it 'has name, sell by date and quality by default' do 
      expect{ Item.new }.to raise_error(ArgumentError)
  end  

  it 'returns the item as a string' do 
    item = Item.new(name="Sulfuras, Hand of Ragnaros", sell_in=0, quality=80)
    expect(item.to_s()).to eq("Sulfuras, Hand of Ragnaros, 0, 80")
  end 
end 