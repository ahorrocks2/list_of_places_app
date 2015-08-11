require('rspec')
require('places')

describe(Places) do
  describe("#location") do
    it("lets you give a location you have visited") do
      test_places = Places.new("Canada")
      expect(test_places.location()).to(eq("Canada"))
    end
  end

  describe(".all") do
    it("list is always blank at first") do
      expect(Places.all()).to(eq([]))
    end  
  end

end
