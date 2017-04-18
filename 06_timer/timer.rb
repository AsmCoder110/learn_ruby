class Timer
  attr_accessor :seconds, :time_string

  def initialize
    @seconds = 0
    @time_string = '00:00:00'
  end

  def seconds=(seconds)
    return if seconds.negative?
    if seconds == 0
      @time_string = '00:00:00'
    elsif seconds <= 60
      @time_string[6] = seconds.to_s[0]
      @time_string[7] = seconds.to_s[1]
    elsif seconds > 0 && seconds < 600
      minutes = seconds / 60
      seconds -= (minutes * 60)
      if minutes.to_s[1]
        @time_string[3] = minutes.to_s[0]
        @time_string[4] = minutes.to_s[1]
      else
        @time_string[4] = minutes.to_s[0]
      end

      if seconds.to_s[1]
        @time_string[6] = seconds.to_s[0]
        @time_string[7] = seconds.to_s[1]
      else
        @time_string[7] = seconds.to_s[0]
      end
    else
      hours = seconds / 3600
      seconds -= (hours * 3600)
      minutes = seconds / 60
      seconds -= (minutes * 60)
      if hours.to_s[1]
        @time_string[0] = hours.to_s[0]
        @time_string[1] = hours.to_s[1]
      else
        @time_string[1] = hours.to_s[0]
      end

      if minutes.to_s[1]
        @time_string[3] = minutes.to_s[0]
        @time_string[4] = minutes.to_s[1]
      else
        @time_string[4] = minutes.to_s[0]
      end

      if seconds.to_s[1]
        @time_string[6] = seconds.to_s[0]
        @time_string[7] = seconds.to_s[1]
      else
        @time_string[7] = seconds.to_s[0]
      end
    end
  end
end
