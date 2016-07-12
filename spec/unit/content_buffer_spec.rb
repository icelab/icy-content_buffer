require 'icy/content_buffer'

RSpec.describe Icy::ContentBuffer do
  subject(:content_buffer) do
    Icy::ContentBuffer.new
  end

  describe '#get' do
    before do
      content_buffer.set(:greeting, 'Gidday')
    end

    it 'gives access to a value' do
      expect(content_buffer.get(:greeting)).to eql('Gidday')
    end
    it 'returns nil for a missing key' do
      expect(content_buffer.get(:farewell)).to eql(nil)
    end
    it 'returns nil for a nil key' do
      expect(content_buffer.get(nil)).to eql(nil)
    end
  end

  describe '#set' do
    it 'stores a data value' do
      expect(content_buffer.set(:greeting, 'Gidday')).to eq('Gidday')
    end

    it 'stores the output of a block' do
      expect(content_buffer.set(:greeting) { "Yo!" }).to eq('Yo!')
    end
  end
end
