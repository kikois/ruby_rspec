describe ContractHistory do
  it "契約を1つわたすことができる" do
    contract_history = ContractHistory.new
    contract = Contract.new(
      Product.new(name: "Foo", type: "W", price: 1),
      Date.new(2020, 1, 1)
    )
    contract_history.append(contract)
    expect(contract_history.contracts).to eq [contract]
  end

  it "全ての契約の金額の合算を粗収益として算出できる" do
    contract_history = ContractHistory.new
    product1 = Product.new(name: "Foo", type: "W", price: 1)
    product2 = Product.new(name: "Foo", type: "W", price: 2)
    contract1 = Contract.new(product1, Date.new(2020, 1, 1))
    contract2 = Contract.new(product2, Date.new(2020, 1, 1))
    contract_history.append(contract1)
    contract_history.append(contract2)
    expect(contract_history.gross_revenue(Date.new(2020, 1, 1))).to eq 3
  end

  it "指定した日付以前の契約日の売上の合算ができる" do
    contract_history = ContractHistory.new
    product = Product.new(name: "Foo", type: "W", price: 1)
    contract = Contract.new(product, Date.new(2020, 1, 1))
    contract_history.append(contract)
    expect(contract_history.gross_revenue(Date.new(2020, 1, 1))).to eq 1
  end

  it "指定した日付より後の契約日の売上が合算されない" do
    contract_history = ContractHistory.new
    product = Product.new(name: "Foo", type: "W", price: 1)
    contract = Contract.new(product, Date.new(2020, 1, 1))
    contract_history.append(contract)
    expect(contract_history.gross_revenue(Date.new(2019, 12, 31))).to eq 0
  end
end
