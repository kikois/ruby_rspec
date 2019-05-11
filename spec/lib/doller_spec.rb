describe Doller do
  describe '#multiplication' do

    it do
      five = Doller.new(5)
      five.times(2)
      expect(five.amount).to eq 10
    end
  end
end
