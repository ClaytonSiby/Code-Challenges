def get_money_spent(keyboards, drives, budget)
  # sort both arrays in ascending order.
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

puts get_money_spent(keyboards, drives, 10)
