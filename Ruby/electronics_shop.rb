def getMoneySpent(keyboards, drives, b)
  # sort both arrays in ascending order.
  budget = b
  keyboards.sort!
  drives.sort!

  additions_arr = []
  i = 0
  while i < keyboards.length
    drives.each do |el|
      el + keyboards[i] <= budget ? additions_arr << el + keyboards[i] : additions_arr
    end
    i += 1
  end

  additions_arr.empty? ? -1 : additions_arr.max
end

keyboards = [1, 3, 1]
drives = [8, 2, 1]

puts getMoneySpent(keyboards, drives, 10)