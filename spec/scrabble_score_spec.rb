require("rspec")
require("scrabble_score")

describe("String#scrabble_score") do

  it("returns the correct scrabble score for the string 'l'") do
    expect("l".scrabble_score()).to(eq(1))
  end

  it("returns the correct scrabble score for the string 'L'") do
    expect("L".scrabble_score()).to(eq(1))
  end

  it("returns the correct scrabble score for the string 'zither'") do
    expect("zither".scrabble_score()).to(eq(18))
  end

  it("returns the correct scrabble score for the string 'ZitHer'") do
    expect("ZitHer".scrabble_score()).to(eq(18))
  end

  it("returns zero for the string ''") do
    expect("".scrabble_score()).to(eq(0))
  end

end
