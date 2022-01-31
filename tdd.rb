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
end
