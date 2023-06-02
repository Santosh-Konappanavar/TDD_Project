class Solver
  def factorial(number)
    raise ArgumentError, 'Factorial only accepts 0 and positive integers' if number.negative?
    return 1 if number.zero?

    result = 1
    (1..number).each do |i|
      result *= i
    end

    result
  end

  def reverse(word)
    word.reverse
  end

  def fizzbuzz(number)
    if (number % 3).zero? && (number % 5).zero?
      'fizzbuzz'
    elsif (number % 3).zero?
      'fizz'
    elsif (number % 5).zero?
      'buzz'
    else
      number.to_s
    end
  end
end
