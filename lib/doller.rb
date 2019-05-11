class Doller
  attr_reader :amount

  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Doller.new(@amount * multiplier)
  end

  def eql?(other)
    other.is_a?(Doller) && amount == other.amount
  end
end
