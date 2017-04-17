require('rspec')
require('clock_angle')

describe('String#clock_angle') do
  it('does not accept value out of clock range') do
    expect("14:63".clock_angle()).to(eq(nil))
  end
  it('return angle for 12 Oclock time') do
    expect("12:00".clock_angle()).to(eq(0))
  end
  it('return angle for inputted time ') do
    expect("12:05".clock_angle()).to(eq(30))
  end
  it('return angle for inputted time ') do
    expect("5:30".clock_angle()).to(eq(15))
  end
    it('return smaller angle for times greater than 6:00') do
      expect("7:00".clock_angle()).to(eq(150))
  end
end
