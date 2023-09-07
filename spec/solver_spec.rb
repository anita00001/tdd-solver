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
  # describe 'Reverse String method' do
  # end

  # describe 'FizzBuzz method' do
  # end
end
