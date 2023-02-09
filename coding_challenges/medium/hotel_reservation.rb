require 'byebug'

def check_capacity(hotel, people)
  # byebug
  hours = []
  current_start = nil

  (hotel[:open]...hotel[:close]).each do |start_hour|
    # byebug
    end_hour = start_hour + 1
    total_people = 0

    hotel[:entries].each do |entry|
      # byebug
      if (start_hour >= entry[:from] && start_hour < entry[:to]) || (end_hour > entry[:from] && end_hour <= entry[:to])
        total_people += entry[:people]
      end
    end

    # byebug
    if total_people + people <= hotel[:capacity]
      if current_start.nil?
        current_start = start_hour
      end
    else
      if current_start
        hours << [current_start, end_hour - 1]
        current_start = nil
      end
    end
  end

  hours << [current_start, hotel[:close] - 1] if current_start

  hours
end



hotel = {
  open: 9,
  close: 22,
  capacity: 5,
  entries: [
    {
      from: 9,
      to: 11,
      people: 3
    },
    {
      from: 11,
      to: 14,
      people: 2
    },
    {
      from: 10,
      to: 11,
      people: 3
    },
    {
      from: 10,
      to: 11,
      people: 3
    },
    {
      from: 10,
      to: 11,
      people: 3
    },
  ]
}

print check_capacity(hotel, 1)