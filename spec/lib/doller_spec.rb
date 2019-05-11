describe Doller do
  describe '#multiplication' do

    it do
      five = Doller.new(5)
      product = five.times(2)
      expect(Doller.new(10)).to eq product

      product = five.times(3)
      expect(Doller.new(15)).to eq product
    end
  end

  describe '#eql?' do
    it do
      object1 = Doller.new(5)
      object2 = Doller.new(5)
      expect(object1.eql?(object2)).to be true
    end

    it do
      object1 = Doller.new(5)
      object2 = Doller.new(6)
      expect(object1.eql?(object2)).to be false
    end
  end
end
