require 'gilded_rose'

describe GildedRose do
    let(:subject) { described_class.new(item)}
    let(:item) { [Item.new("+5 Dexterity Vest", 10, 20)] }

  describe "#update_quality" do
    it 'does not change the item name' do
      expect { subject.update_quality() }.to_not change { item[0].name }
    end

    it 'decreases sell in day by 1' do 
      expect { subject.update_quality() }.to change { item[0].sell_in() }.by(-1)
    end 

    it 'descreases quality by 1' do 
      expect { subject.update_quality() }.to change { item[0].quality() }.by(-1)
    end 

    it 'decreases quality by 2 after sell in day is 0' do 
      10.times { subject.update_quality() }
      expect { subject.update_quality() }.to change { item[0].quality() }.by(-2)
    end 

    it 'the quality is never negative when sellin in 0' do 
      30.times { subject.update_quality() }
      expect { subject.update_quality() }.to_not change { item[0].quality() }
    end 

    it 'the quality is never more than 50' do 
      50.times { subject.update_quality() }
      expect { subject.update_quality() }.to_not change { item[0].quality() }
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

