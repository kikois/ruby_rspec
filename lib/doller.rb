require 'money'

class Doller < Money
  def initialize(amount)
    super(amount)
  end

  def times(multiplier)
    Doller.new(@amount * multiplier)
  end

  def ==(other)
    @amount == other.instance_variable_get(:@amount)
  end

  def eql?(other)
    other.instance_of?(Doller) && @amount == other.instance_variable_get(:@amount)
  end
end
