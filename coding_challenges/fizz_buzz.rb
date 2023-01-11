require 'byebug'
require 'ostruct'

module Implementation
  def fizz_buzz(n)
    m_three_counter = 0
    m_five_counter = 0

    (1..n).each do |num|
      m_three_counter += 1
      m_five_counter += 1

      if m_five_counter == 5 && m_three_counter == 3
        puts 'FizzBuzz'
        m_five_counter = 0
        m_three_counter = 0
      elsif m_three_counter.eql? 3
        puts 'Fizz'
        m_three_counter = 0
      elsif m_five_counter.eql? 5
        puts 'Buzz'
        m_five_counter = 0
      else
        puts num
      end
    end
  end
end