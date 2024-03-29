class ConfigParser
  @truthy_values = ['true', 'on', 'yes']
  @falsey_values = ['false', 'off', 'no']
  @hash = Hash.new

  class << self
    def perform(file)
      file.each { |line| process_line(line) }
      file.close
      @hash
    end

    private

    def process_value(value)
      return value.to_i if is_integer?(value)
      return value.to_f if is_float?(value)
      return true if @truthy_values.include?(value)
      return false if @falsey_values.include?(value)

      value
    end

    def process_line(line)
      line = strip_line(line)
      return if is_a_comment?(line)
      expecting_equal_char_at(line) unless line.include?('=')
      attach(line)
    end

    def expecting_equal_char_at(line)
      raise SyntaxError, "Expecting character '=' at definition: #{line}"
    end

    def attach(line)
      idx = line.index('=')
      @hash[line.slice(...idx).downcase] = process_value(line.slice(idx + 1..))
    end

    def strip_line(line)
      line.gsub(/\s+/, '')
    end

    def is_a_comment?(line)
      return line =~ /^#/ ? true : false
    end

    def is_integer?(string)
      !!(string =~ /\A[-+]?[0-9]+\z/)
    end

    def is_float?(string)
      !!Float(string) rescue false
    end
  end
end

path = File.join(File.dirname(__FILE__), 'data.txt')
file = File.open(path)
puts ConfigParser.perform(file)