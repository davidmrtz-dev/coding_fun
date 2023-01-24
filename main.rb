require 'byebug'

class Numeric
  def log10
    Math.log(self, 10)
  end
end

begin
  puts 9.log10
rescue
  puts 'undefined method'
end