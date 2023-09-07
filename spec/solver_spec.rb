require_relative '../solver'

describe Solver do
  before(:each) do
    @solver = Solver.new
  end

  describe 'Factorial method' do
    it 'Factorial of 5 should be equal to 120' do
      expect(@solver.factorial(5)).to eq(120)
    end

    it 'Factorial of 1 should be equal to 1' do
      expect(@solver.factorial(1)).to eq(1)
    end

    it 'Factorial of 0 should be equal to 1' do
      expect(@solver.factorial(0)).to eq(1)
    end

    it 'Factorial of negative number should raise an exception' do
      expect { @solver.factorial(-1) }.to raise_error(ArgumentError)
    end
  end

  describe 'Reverse String method' do
    it 'reverses a string' do
      expect(@solver.reverse('hello')).to eq('olleh')
    end

    it 'returns an empty string for an empty input' do
      expect(@solver.reverse('')).to eq('')
    end

    it 'reverses a string with spaces' do
      expect(@solver.reverse('hello world')).to eq('dlrow olleh')
    end
  end

  describe 'FizzBuzz method' do
    it 'returns "fizz" when N is divisible by 3' do
      expect(@solver.fizzbuzz(9)).to eq('fizz')
    end

    it 'returns "buzz" when N is divisible by 5' do
      expect(@solver.fizzbuzz(10)).to eq('buzz')
    end

    it 'returns "fizzbuzz" when N is divisible by both 3 and 5' do
      expect(@solver.fizzbuzz(15)).to eq('fizzbuzz')
    end

    it 'returns N as a string for any other case' do
      expect(@solver.fizzbuzz(7)).to eq('7')
    end
  end
end
