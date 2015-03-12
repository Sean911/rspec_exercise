class Airplane
  attr_reader :type, :wingloading, :horsepower
  attr_accessor :started, :status
  def initialize (type, wingloading, horsepower)
    @type = type
    @wingloading = wingloading
    @horsepower = horsepower
    @started = false
    @status = "landed"
  end


  def start
    if @started
      "airplane already started"
    else
      @started = true
      "airplane started"
    end
  end

  def takeoff
    if !@started
      "airplane not started, please start"
    else
      @status = "flying"
      "airplane launched"
    end
  end

  def land
    if !@started
      "airplane not started, please start"
    elsif @status == "landed"
      "airplane already on the ground"
    else
      "airplane landed"
    end
  end



end
