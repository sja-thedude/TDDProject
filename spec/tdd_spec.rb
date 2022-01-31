require_relative '../tdd'

describe Solver do
  solve = Solver.new
  word = 'Juveria'
  word_two = 'Syeda'
  word_three = 'Wesego'
  num = 5
  num_two = -3
  num_three = 0

  context 'Test the reverse String method in Solver Class' do
    it 'should return the reverse of the word' do
      reversed = solve.reverse(word)
      expect(reversed).to eq('airevuJ')
    end

    it 'should return the reverse of the word' do
      reversed = solve.reverse(word_two)
      expect(reversed).to eq('adeyS')
    end

    it 'should return the reverse of the word' do
      reversed = solve.reverse(word_three)
      expect(reversed).to eq('ogeseW')
    end
  end

  context 'Test the factorial method in Solver Class' do
    it 'should return the factorial of a given positive number' do
      factorial = solve.factorial(num)
      expect(factorial).to eq(120)
    end

    it 'should return an error if the given number is negative' do
      expect { solve.factorial(num_two) }.to raise_error('Number is less than 0')
    end

    it 'should return 1 when the given number is 0' do
      factorial_zero = solve.factorial(num_three)
      expect(factorial_zero).to eq(1)
    end
  end

  context 'Test the fizzbuzz method in Solver Class' do
    it 'should return fizzbuzz if 15 is passed as number' do
      string = solve.fizzbuzz(15)
      expect(string).to eql 'fizzbuzz'
    end
    it 'should return fizz if 9 is passed as number' do
      string = solve.fizzbuzz(9)
      expect(string).to eql 'fizz'
    end

    it 'should return buzz if 10 is passed as number' do
      string = solve.fizzbuzz(10)
      expect(string).to eql 'buzz'
    end

    it 'should return buzz if 10 is passed as number' do
      string = solve.fizzbuzz(20)
      expect(string).to eql 'buzz'
    end

    it 'should return 7 as a string it is passed as number' do
      string = solve.fizzbuzz(7)
      expect(string).to eql '7'
    end

    it 'should return 13 as a string it is passed as number' do
      string = solve.fizzbuzz(13)
      expect(string).to eql '13'
    end
  end
end
