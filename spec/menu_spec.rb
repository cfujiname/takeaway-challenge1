require "Menu"
# US1
describe Menu do

  subject(:menu) { Menu.new(list_of_dishes) } #inject the hash to the menu (needs to be initialized!)
  #create a list of dishes hash
  let(:list_of_dishes) do {
      Coffee: 0.99,
      Sandwich: 3.99,
      Water: 1.19,
      Salad: 4.99
  }
  end
  it "contains list of dishes with prices" do # to be able to print the list, first we create the list
    expect(menu.list_of_dishes).to eq(list_of_dishes)
  end

  it "prints list_of_dishes with prices" do # after create lis, print
    printed_menu = "Coffee £0.99, Sandwich £3.99, Water £1.19, Salad £4.99"
    expect(menu.print).to eq (printed_menu)
  end
  # US1
  it "says if a dish is available in the list of dishes" do
    expect(menu.dish_available?(:Coffee)).to be true
  end

  it "says if a dish is NOT available in the list of dishes" do
    expect(menu.dish_available?(:Sundaes)).to be false
  end

  it 'fetches a price from the list of dishes' do
    expect(menu.price(:Coffee)).to eq(list_of_dishes[:Coffee])
  end
end