def getMoneySpent(keyboards, drives, b)
  # sort both arrays in ascending order.
  budget = b
  keyboards.sort!
  drives.sort!

  additions_arr = []
  i = 0
  while i < keyboards.length
    drives.each do |el|
      additions_arr << if el + keyboards[i] <= budget
                         el + keyboards[i]
                       else
                         -1
                       end
    end
    i += 1
  end

  return additions_arr.select { |el| el <= budget }.max

  additions_arr.last
end
