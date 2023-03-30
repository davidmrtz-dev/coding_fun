require 'spec_helper'

RSpec.describe 'CaesarCipher' do
  context "when given 'Always-Look-on-the-Bright-Side-of-Life' input" do
    it 'should return the encrypted message' do
      expect(Implementation::caesar_cipher('Always-Look-on-the-Bright-Side-of-Life', 5))
        .to eq 'Fqbfdx-Qttp-ts-ymj-Gwnlmy-Xnij-tk-Qnkj'
    end
  end

  context "when given 'middle-Outz' input" do
    it 'should return the encrypted message' do
      expect(Implementation::caesar_cipher('middle-Outz', 2))
        .to eq 'okffng-Qwvb'
    end
  end
end