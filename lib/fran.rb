require 'money'

class Fran < Money
  def initialize(amount)
    super(amount)
  end

  def times(multiplier)
    Fran.new(@amount * multiplier)
  end

  def ==(other)
    @amount == other.instance_variable_get(:@amount)
  end
end
