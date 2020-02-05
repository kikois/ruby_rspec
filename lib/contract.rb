class Contract
  attr_reader :product
  attr_reader :signed_on

  def initialize(product, signed_on)
    @product = product
    @signed_on = signed_on
  end

  def gross_revenue(date)

  end
end
