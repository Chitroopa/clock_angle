class String
  define_method(:clock_angle) do
    time_array = self.split(":")
    hour = time_array.at(0).to_f()
    minutes = time_array.at(1).to_f()
    degree = 0
    if (hour.<=12) || (minutes.<=60)

      if (hour.==12) && (minutes.==0)
        degree = 0
      elsif(hour.==12)
        degree=minutes.*(6)
      elsif (hour.!=12)
        degree = (((hour.*(60)).+(minutes))./(2)).-(minutes.*(6)).abs
      end
      if (degree>180)
        degree = 360.-((((hour.*(60)).+(minutes))./(2)).-(minutes.*(6))).abs
      end
      degree
    end
  end
end
