class ContractHistory
  attr_reader :contracts

  def initialize
    @contracts = []
  end

  def append(contract)
    @contracts << contract
  end

  def gross_revenue(max_signed_on)
    @contracts.sum do |contract|
      if contract.signed_on <= max_signed_on
        contract.product.price
      else
        0
      end
    end
  end
end
