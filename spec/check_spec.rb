require 'check'

describe Check do
  subject(:check) { Check.new }

  describe '#get_heading' do
    it 'gets the heading ' do
      expect(check.get_heading('## Hello')).to eql('Hello')
    end
  end

  describe 'check_head_length' do
    it 'print ok if rule passed' do
      expect(check.check_head_length('hello')).to eql(true)
    end

    it 'print error if rule not passed' do
      expect(check.check_head_length("hello world hwo are you i'm fine what about you")).to eql(false)
    end
  end
end
