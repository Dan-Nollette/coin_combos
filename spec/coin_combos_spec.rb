require('rspec')
require('coin_combo')

describe('#coin_combo') do
  it("Takes 0 as a number of cents and returns an array of coins with values of 0") do
    expect(coin_combo(0)).to(eq([0, 0, 0, 0]))
  end
  it("Takes 1 to 4 as a number of cents and returns an array of coins with number of pennies first and the rest of values 0") do
    expect(coin_combo(3)).to(eq([3, 0, 0, 0]))
  end
  it("Takes 1 to 9 as a number of cents and returns an array of coins with number of pennies first, then nickels and the rest of values 0") do
    expect(coin_combo(9)).to(eq([4, 1, 0, 0]))
  end
  it("Takes 1 to 19 as a number of cents and returns an array of coins with number of pennies first, then nickels, dimes, and the quarters as 0") do
    expect(coin_combo(17)).to(eq([2, 1, 1, 0]))
  end
  it("Takes a number of cents and returns an array of coins with number of pennies first, then nickels, dimes, and quarters") do
    expect(coin_combo(194)).to(eq([4, 1, 1, 7]))
  end
end
