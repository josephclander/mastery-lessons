# create an airport to store planes
class Airport
  def initialize
    @hangar = []
  end

  def land(plane)
    @hangar.push(plane)
  end

  def take_off(plane)
    return 'Error: there are no planes to take off' if @hangar.length < 1

    if @hangar.include?(plane)
      @hangar.delete(plane)
      plane
    else
      'Error: plane not in hangar'
    end
  end

  def hangar_report
    if @hangar.length == 1
      'There is 1 plane in the hangar'
    else
      "There are #{@hangar.length} planes in the hangar"
    end
  end
end

# create a plane
class Plane
  def initialize(name)
    @name = name
  end
end

p heathrow = Airport.new
p a0567 = Plane.new('A0567')
p heathrow.land(a0567)
p heathrow.hangar_report
