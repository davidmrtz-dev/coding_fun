def check_capacity(hotel, people)
  puts ['hello', hotel, people]
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

check_capacity(hotel, 1)