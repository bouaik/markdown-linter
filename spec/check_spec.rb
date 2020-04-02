require 'check'

describe Check do
  subject(:check) { Check.new }
  let(:headings) { ["World"] }
  let(:urls) { ["https://www.google.com"] }

  describe '#get_heading' do
    it 'gets the heading ' do
      expect(check.get_heading('## Hello')).to eql('Hello')
    end
  end

  describe '#duplicate_headings' do
    it 'reuturn true if heading is not used before' do
      expect(check.duplicate_headings('## Hello', headings)).to eql(true)
    end

    it 'reuturn false if heading is used before' do
      expect(check.duplicate_headings('## World', headings)).to eql(false)
    end
  end

  describe '#check_head_length' do
    it 'print ok if rule passed' do
      expect(check.check_head_length('hello')).to eql(true)
    end

    it 'print error if rule not passed' do
      expect(check.check_head_length('hello world hwo are you')).to eql(false)
    end
  end

  describe '#get_url' do
    it 'extract url from line' do
      expect(check.get_url('![@bouaik](https://github.com/bouaik)')).to eql('https://github.com/bouaik')
    end

    it 'return empty strng if url is empty' do
      expect(check.get_url('![@bouaik]()')).to eql('')
    end
  end

  describe '#duplicate_urls' do
    it 'reuturn true if url is not used before' do
      expect(check.duplicate_headings('https://github.com/bouaik', urls)).to eql(true)
    end

    it 'reuturn false if url is used before' do
      expect(check.duplicate_headings('https://www.google.com', urls)).to eql(false)
    end
  end

  # describe '#url' do
  #   it 'print ok if url is not empty' do
  #     expect(check.url('https://github.com/bouaik')).to eql(true)
  #   end

  #   it 'print error if url is empty' do
  #     expect(check.url('')).to eql(false)
  #   end
  # end
end
