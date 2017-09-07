public def coin_combo(cents)
  dollar  = cents / 100
  cents -= dollar * 100
  halfDollar = cents / 50
  cents -= halfDollar * 50
  quarters = cents / 25
  cents -= quarters * 25
  dimes = cents / 10
  cents -= dimes * 10
  nickels = cents / 5
  cents -= nickels * 5
  [cents, nickels , dimes, quarters, halfDollar, dollar]
end


loop do
  puts "Hi, please enter a number of cents and I'll tell you how many of which coins you need to make that many cents."
  coins_array = coin_combo(gets.chomp.to_i)
  puts " dollar: #{coins_array[5]} \n halfDollar: #{coins_array[4]} \n quarters: #{coins_array[3]} \n dimes: #{coins_array[2]} \n nickels: #{coins_array[1]} \n pennies: #{coins_array[0]} "
end


# public def coin_combo(cents)
#   coinValues = [1, 5, 10, 25, 50]
#   coinsCount = []
#   coinsCount.push(cents / coinValues.pop)
#   unless coinValues.empty?
#     coinsCount = coinsCount + coin_combo(,)
#   end
# end
