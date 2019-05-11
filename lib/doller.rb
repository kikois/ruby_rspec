class Doller
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Doller.new(@amount * multiplier)
  end

  def ==(other)
    @amount == other.amount
  end

  def eql?(other)
    other.instance_of?(Doller) && @amount == other.amount
  end
end
