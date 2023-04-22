require 'spec_helper'

RSpec.describe 'ConnectedRoutes' do
  let(:input) do
    [
      ["SFO", "EWR"],
      ["SJC", "LAX"],
      ["DFW", "SJC"],
      ["EWR", "OAK"],
      ["LAX", "SFO"]
    ]
  end
  describe '.connected_routes' do
    it 'should return an array with the linked routes' do
      expect(Implementation::connected_routes(input))
        .to eq ["DFW", "SJC", "LAX", "SFO", "EWR", "OAK"]
    end
  end
end