require 'money'

class Doller < Money
  def initialize(amount)
    super(amount)
  end

  def times(multiplier)
    Doller.new(@amount * multiplier)
  end
end
