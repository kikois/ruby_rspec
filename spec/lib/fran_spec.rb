describe Fran do
  describe '#eql?' do
    it do
      object1 = Fran.new(5)
      object2 = Fran.new(5)
      expect(object1.eql?(object2)).to be true
    end

    it do
      object1 = Fran.new(5)
      object2 = Fran.new(6)
      expect(object1.eql?(object2)).to be false
    end
  end
end
