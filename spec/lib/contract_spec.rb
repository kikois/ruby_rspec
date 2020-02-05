require 'date'

describe Contract do
  it "契約には1つの製品が紐づく" do
    product = Product.new(name: "Foo", type: "W", price: 1)
    contract = Contract.new(product, Date.new(2020, 1, 1))
    expect(contract.product).not_to eq nil
  end

  it "特定の日付を契約へ設定できる" do
    product = Product.new(name: "Foo", type: "W", price: 1)
    contract = Contract.new(product, Date.new(2020, 1, 1))
    expect(contract.signed_on).not_to eq nil
  end

  it "指定日の製品の収益が取得できる" do
    product = Product.new(name: "Foo", type: "W", price: 1)
    contract = Contract.new(product, Date.new(2020, 1, 1))
    expect(contract.gross_revenue(Date.new(2020, 1, 1))).to eq 1
  end
end
