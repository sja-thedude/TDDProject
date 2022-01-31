class Solver
  def factorial(num)
    raise 'Number is less than 0' if num.negative?
    return 1 if num.zero?

    pro = 1
    (1..num).each do |n|
      pro *= n
    end
    pro
  end

  def reverse(word)
    word.chars.reverse.join
  end

  def fizzbuzz(num)
    if (num % 3).zero? && (num % 5).zero?
      'fizzbuzz'
    elsif (num % 3).zero?
      'fizz'
    elsif (num % 5).zero?
      'buzz'
    else
      num.to_s
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
