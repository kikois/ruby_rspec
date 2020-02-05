class Product
  attr_reader :name
  attr_reader :type
  attr_reader :price

  PRODUCT_TYPES = %w[W S D]
  private_constant :PRODUCT_TYPES

  def initialize(name:, type:, price:)
    @name = name
    set_type(type)
    @price = price
  end

  def gross_revenue(days_after_signed_on)
    case type
    when "W"
      days_after_signed_on < 0 ? 0 : price
    when "S"
      if days_after_signed_on < 0
        0
      elsif days_after_signed_on < 30
        price * 2 / 3
      else
        price
      end
    when "D"
      if days_after_signed_on < 0
        0
      elsif days_after_signed_on < 60
        price / 3
      elsif days_after_signed_on < 120
        price * 2 / 3
      else
        price
      end
    end
  end

  private
  def set_type(str)
    if PRODUCT_TYPES.include?(str)
      @type = str
    end
  end
end
