def repeated_string(string, num)
  num_of_multiples = num / string.length
  remainder = num % string.length
  count = 0
  extra_letter = 0

  i = 0
  while i < string.length
    count += 1 if string[i] == 'a'
    extra_letter += 1 if remainder > i

    i += 1
  end
  num_of_multiples * count + extra_letter
end

puts repeated_string('aba', 10)
