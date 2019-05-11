class Fran
  def initialize(amount)
    @amount = amount
  end

  def times(multiplier)
    Fran.new(@amount * multiplier)
  end

  def ==(other)
    @amount == other.instance_variable_get(:@amount)
  end

  def eql?(other)
    other.instance_of?(Fran) && @amount == other.instance_variable_get(:@amount)
  end
end
