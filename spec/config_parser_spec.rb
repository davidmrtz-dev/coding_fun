require 'spec_helper'

RSpec.describe 'ConfigParser' do
  let!(:expected_result) do
    {
      "cost"=>2.56,
      "debug_mode"=>false,
      "host"=>"test.com",
      "log_file_path"=>"/tmp/logfile.log",
      "send_notifications"=>true,
      "server_id"=>55331,
      "test_mode"=>true,
      "user"=>"user",
      "verbose"=>true
    }
  end

  describe '.perform' do
    before do
      File.open('test.txt', 'w') do |f|
        f.write("
          # This is a comment, ignore it
          # All these config lines are valid
          host = test.com
          server_id=55331
          cost=2.56
          user= user
          # comment can appear here as well
          verbose =true
          test_mode = on
          debug_mode = off
          log_file_path = /tmp/logfile.log
          send_notifications = yes
        ".strip)
      end
    end

    after { File.write('text.txt', "") }

    describe 'when the input file does not have missing characters' do
      it 'should parse the given file an return a hash of its content' do
        file = File.open('test.txt')
        expect(ConfigParser.perform(file)).to eq expected_result
      end

      it "should turn [yes, true, on, no, false, off] into valid boolean values" do
        file = File.open('test.txt')
        hash = ConfigParser.perform(file)
        expect(hash['verbose']).not_to eq 'true'
        expect(hash['verbose']).to eq true
        expect(hash['test_mode']).not_to eq 'on'
        expect(hash['test_mode']).to eq true
        expect(hash['debug_mode']).not_to eq 'off'
        expect(hash['debug_mode']).to eq false
        expect(hash['send_notifications']).not_to eq 'yes'
        expect(hash['send_notifications']).to eq true
      end

      it "should downcase the key values on the config file" do
        File.write('test.txt', "#{$/}Register_Events= no", mode: 'a')
        file = File.open('test.txt')
        hash = ConfigParser.perform(file)
        expect(hash.keys.last).to eq 'register_events'
      end
    end

    describe "when the input file does have missing character '='" do
      it 'should raise an error with the line where the error arises' do
        File.write('test.txt', "#{$/}enable_lints always", mode: 'a')
        file = File.open('test.txt')
        expect{ ConfigParser.perform(file) }
          .to raise_error(SyntaxError, "Expecting character '=' at definition: enable_lintsalways")
      end
    end
  end
end
