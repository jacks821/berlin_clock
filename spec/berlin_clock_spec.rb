require_relative '../berlin_clock.rb'

describe BerlinClock do

  it "takes the time, and gives an output for seconds" do
    @clock = BerlinClock.new("12:00:37")
    expect(@clock.seconds_to_light).to eq("O")
  end

  it "finds the first line of hours and gives a string output" do
    @clock = BerlinClock.new("12:00:37")
    expect(@clock.hours_line_one).to eq("RROO")
  end

  it "finds the second line of hours and gives a string output" do
    @clock = BerlinClock.new("12:00:37")
    expect(@clock.hours_line_two).to eq("RROO")
  end

  it "finds the first line for minutes and gives a string output" do
    @clock = BerlinClock.new("12:12:37")
    expect(@clock.minutes_line_one).to eq("YYOOOOOOOOO")
  end

  it "finds the first line for minutes and gives a string output" do
    @clock = BerlinClock.new("12:27:30")
    expect(@clock.minutes_line_one).to eq("YYRYYOOOOOO")
  end

  it "finds the second line for minutes and gives a string output" do
    @clock = BerlinClock.new("12:27:30")
    expect(@clock.minutes_line_two).to eq("YYOO")
  end

  it "puts the output of all the private methods into one output" do
    @clock = BerlinClock.new("12:27:30")
    expect(@clock.to_berlin_time).to eq("Y\nRROO\nRROO\nYYRYYOOOOOO\nYYOO")
  end

end
