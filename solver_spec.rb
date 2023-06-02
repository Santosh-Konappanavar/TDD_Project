require_relative 'solver'

RSpec.describe Solver do
  describe '#factorial' do
    it 'returns 1 when given 0' do
      expect(subject.factorial(0)).to eq(1)
    end

    it 'returns the correct factorial for a given number' do
      expect(subject.factorial(5)).to eq(120)
      expect(subject.factorial(6)).to eq(720)
      expect(subject.factorial(10)).to eq(3_628_800)
    end

    it 'raises an exception when given a negative number' do
      expect { subject.factorial(-5) }.to raise_error(ArgumentError, 'Factorial only accepts 0 and positive integers')
    end
  end

  describe '#reverse' do
    it 'returns the reversed word' do
      expect(subject.reverse('hello')).to eq('olleh')
      expect(subject.reverse('world')).to eq('dlrow')
    end
  end

  describe '#fizzbuzz' do
    it "returns 'fizz' when the number is divisible by 3" do
      expect(subject.fizzbuzz(3)).to eq('fizz')
      expect(subject.fizzbuzz(9)).to eq('fizz')
    end

    it "returns 'buzz' when the number is divisible by 5" do
      expect(subject.fizzbuzz(5)).to eq('buzz')
      expect(subject.fizzbuzz(25)).to eq('buzz')
    end

    it "returns 'fizzbuzz' when the number is divisible by 3 and 5" do
      expect(subject.fizzbuzz(15)).to eq('fizzbuzz')
      expect(subject.fizzbuzz(30)).to eq('fizzbuzz')
    end

    it 'returns the number as a string for any other case' do
      expect(subject.fizzbuzz(7)).to eq('7')
      expect(subject.fizzbuzz(13)).to eq('13')
    end
  end
end
