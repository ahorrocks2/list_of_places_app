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

  describe("#save") do
    it("saves the given location to the list") do
      test_places = Places.new("America")
      test_places.save()
      expect(Places.all()).to(eq([test_places]))
    end
  end
end
