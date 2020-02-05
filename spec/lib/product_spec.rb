describe Product do
  it "name を格納できる" do
    product = Product.new(name: "Foo", type: "W", price: 1)
    expect(product.name).to eq "Foo"
  end

  it "type を格納できる" do
    product = Product.new(name: "Foo", type: "W", price: 1)
    expect(product.type).to eq "W"
  end

  it "price を格納できる" do
    product = Product.new(name: "Foo", type: "W", price: 1)
    expect(product.price).to eq 1
  end

  it "typeに'X'が指定された場合は格納しない" do
    product = Product.new(name: "Foo", type: "X", price: 1)
    expect(product.type).to eq nil
  end

  context "type が 'W' のとき" do
    it "契約日から-1日後だった場合は gross_revenue は 0 を返す" do
      product = Product.new(name: "Foo", type: "W", price: 1)
      expect(product.gross_revenue(-1)).to eq 0
    end

    it "契約日から0日後だった場合は gross_revenue は price を返す" do
      product = Product.new(name: "Foo", type: "W", price: 3)
      expect(product.gross_revenue(0)).to eq 3
    end
  end

  context "type が 'S' のとき" do
    it "契約日から-1日後だった場合は gross_revenue は 0 を返す" do
      product = Product.new(name: "Foo", type: "S", price: 1)
      expect(product.gross_revenue(-1)).to eq 0
    end

    it "契約日から0日後だった場合は gross_revenue は price の 2/3 を返す" do
      product = Product.new(name: "Foo", type: "S", price: 3)
      expect(product.gross_revenue(0)).to eq 2
    end

    it "契約日から30日後だった場合は gross_revenue は price の 3/3 を返す" do
      product = Product.new(name: "Foo", type: "S", price: 3)
      expect(product.gross_revenue(30)).to eq 3
    end
  end

  context "type が 'D' のとき" do
    it "契約日から-1日後だった場合は gross_revenue は 0 を返す" do
      product = Product.new(name: "Foo", type: "D", price: 3)
      expect(product.gross_revenue(-1)).to eq 0
    end

    it "契約日から0日後だった場合は gross_revenue は price の 1/3 を返す" do
      product = Product.new(name: "Foo", type: "D", price: 3)
      expect(product.gross_revenue(0)).to eq 1
    end

    it "契約日から60日後だった場合は gross_revenue は price の 2/3 を返す" do
      product = Product.new(name: "Foo", type: "D", price: 3)
      expect(product.gross_revenue(60)).to eq 2
    end

    it "契約日から120日後だった場合は gross_revenue は price の 3/3 を返す" do
      product = Product.new(name: "Foo", type: "D", price: 3)
      expect(product.gross_revenue(120)).to eq 3
    end
  end
end
