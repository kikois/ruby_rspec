class Money
  def initialize(amount)
    @amount = amount
  end

  def ==(other)
    @amount == other.instance_variable_get(:@amount)
  end

  def eql?(other)
    other.instance_of?(self.class) && @amount == other.instance_variable_get(:@amount)
  end
end
