describe Money do
  describe '#multiplication' do
    it do
      five = Doller.new(5)
      expect(Doller.new(10)).to eq five.times(2)
      expect(Doller.new(15)).to eq five.times(3)
    end
  end

  describe '#eql?' do
    it do
      object1 = Doller.new(5)
      object2 = Doller.new(5)
      expect(object1.eql?(object2)).to be true
    end

    it do
      object1 = Fran.new(5)
      object2 = Fran.new(5)
      expect(object1.eql?(object2)).to be true
    end

    it do
      object1 = Doller.new(5)
      object2 = Doller.new(6)
      expect(object1.eql?(object2)).to be false
    end

    it do
      object1 = Fran.new(5)
      object2 = Fran.new(6)
      expect(object1.eql?(object2)).to be false
    end
  end

  describe '#multiplication' do
    it do
      five = Fran.new(5)
      expect(Fran.new(10)).to eq five.times(2)
      expect(Fran.new(15)).to eq five.times(3)
    end
  end
end
