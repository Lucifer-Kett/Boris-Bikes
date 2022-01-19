class DockingStation
  attr_reader :bikes
  attr_reader :capacity
  
  def initialize(capacity = 20)
    @bikes= []
    @capacity= capacity
  end

  def release_bike
    if raise "No bikes found" 
    else
      @bikes.each { |bike| if bike.working = true puts bike }
    end
  end

  def dock(bike, status=true)
    if full?
        raise "Station at capacity"
    else
        bike.working = status
        @bikes << bike
    end
  end

    private 

    def empty?
      @bikes.empty?
    end

    def full?
      @bikes.length == @capacity
    end
end

