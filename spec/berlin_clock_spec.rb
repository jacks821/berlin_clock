require_relative '../berlin_clock.rb'

describe BerlinClock do

  it "takes the time, and gives an output for seconds" do
    @clock = BerlinClock.new
    expect(@clock.seconds_to_light(37)).to eq("O")
  end

  it "finds the first line of hours and gives a string output" do
    @clock = BerlinClock.new
    expect(@clock.hours_line_one(12)).to eq("RROO")
  end

  it "finds the second line of hours and gives a string output" do
    @clock = BerlinClock.new
    expect(@clock.hours_line_two(12)).to eq("RROO")
  end

  it "finds the first line for minutes and gives a string output" do
    @clock = BerlinClock.new
    expect(@clock.minutes_line_one(12)).to eq("YYOOOOOOOOO")
  end

  it "finds the first line for minutes and gives a string output" do
    @clock = BerlinClock.new
    expect(@clock.minutes_line_one(27)).to eq("YYRYYOOOOOO")
  end

  it "finds the second line for minutes and gives a string output" do
    @clock = BerlinClock.new
    expect(@clock.minutes_line_two(27)).to eq("YYOO")
  end

  it "puts the output of all the methods into one output" do
    @clock = BerlinClock.new
    expect(@clock.to_berlin_time("12:27:32")).to eq("Y\nRROO\nRROO\nYYRYYOOOOOO\nYYOO")
  end

end
