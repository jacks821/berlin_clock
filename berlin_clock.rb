class BerlinClock
  attr_accessor :time

  def initialize(time = Time.now.strftime("%H:%M:%S"))
    @time = time
  end


  def to_berlin_time
    second = time[6..7].to_i
    minute = time[3..4].to_i
    hour = time[0..1].to_i
    return seconds_to_light(second) + "\n" + hours_line_one(hour) + "\n" + hours_line_two(hour) + "\n" + minutes_line_one(minute) + "\n" + minutes_line_two(minute)
  end

  def seconds_to_light(seconds)
    if seconds % 2 == 0
      return "Y"
    else
      return "O"
    end
  end


  def hours_line_one(hours)
    a = hours / 5
    hours_string = ''
    a.times do
      hours_string << 'R'
    end
    (4 - a).times do
      hours_string << 'O'
    end
    return hours_string
  end

  def hours_line_two(hours)
    b = hours % 5
    hours_two_string = ""
    b.times do
      hours_two_string << "R"
    end
    (4 - b).times do
      hours_two_string << "O"
    end
    return hours_two_string
  end

  def minutes_line_one(minutes)
    c = minutes.to_i / 5
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

  def minutes_line_two(minutes)
    h = minutes % 5
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

puts BerlinClock.new.to_berlin_time
