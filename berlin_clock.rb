class BerlinClock
  def initialize(time)
    @time = time
  end

  def to_berlin_time
    puts self.seconds_to_light + "\n" + self.hours_line_one + "\n" + self.hours_line_two + "/n" + self.minutes_line_one + "\n" + self.minutes_line_two
  end



  def seconds_to_light
    seconds = @time[6..7].to_i
    if seconds % 2 == 0
      return "Y"
    else
      return "O"
    end
  end


  def hours_line_one
    a = @time[0..1].to_i / 5
    if a == 0
      return "OOOO"
    elsif a == 1
      return "ROOO"
    elsif a == 2
      return "RROO"
    elsif a == 3
      return "RRRO"
    elsif a == 4
      return "RRRR"
    end
  end

  def hours_line_two
    b = @time[0..1].to_i % 5
    if b == 0
      return "OOOO"
    elsif b == 1
      return "ROOO"
    elsif b == 2
      return "RROO"
    elsif b == 3
      return "RRRO"
    elsif b == 4
      return "RRRR"
    end
  end

  def minutes_line_one
    c = @time[3..4].to_i / 5
    d = ''
    i = 1
    c.times do
      if i % 3 == 0
        d << "R"
      else
        d << "Y"
      end
      i += 1
    end

    (11 - c).times do
      d << "O"
    end
    return d
  end

  def minutes_line_two
    h = @time[3..4].to_i % 5
    f = ''
    h.times do
      f << "Y"
    end
    (4-h).times do
      f << "O"
    end
    return f
  end
end
