def fizz_buzz(num)
  i = 1
  while i <= num
    if (i % 5).zero? && (i % 3).zero?
      puts 'FizzBuzz'
    elsif (i % 3).zero?
      puts 'Fizz'
    elsif (i % 5).zero?
      puts 'Buzz'
    else
      puts i
    end
    i += 1
  end
end

fizz_buzz(45)
