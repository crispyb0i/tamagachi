require('rspec')
require('places')

describe(Place) do
  before() do
    Place.clear()
  end

  describe('#places') do
    it("Let's you give it a place you've been") do
      test_place = Place.new("Thailand")
      expect(test_place.places()).to(eq("Thailand"))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a place to the array of saved places") do
      test_place = Place.new("Thailand")
      test_place.save()
      expect(Place.all()).to(eq([test_place]))
    end
  end

  describe(".clear") do
    it("empties all of the saved places") do
      Place.new("Thailand").save()
      Place.clear()
      expect(Place.all()).to(eq([]))
    end
  end
end
