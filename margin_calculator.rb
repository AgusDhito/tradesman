#!/usr/bin/env ruby

puts 'Welcome to margin calculator'
puts '============================='

puts 'Insert the stock price amount (1 stock): '
stock_price = ARGF.gets.to_f
puts 'Insert the stock shares that you have:'
stock_amount = ARGF.gets.to_f
puts 'Insert the stop profit value (%):'
profit_percentage = ARGF.gets.to_f
puts 'Insert the stop loss value (%):'
loss_percentage = ARGF.gets.to_f

# process the percentage
assets = stock_price * stock_amount

nett_profit = (profit_percentage / 100) * assets
profit_gross = assets + nett_profit

nett_loss = (loss_percentage / 100) * assets
loss_gross = assets - nett_loss
stock_price_after_profit = profit_gross / stock_amount
stock_price_after_loss = loss_gross / stock_amount

puts "\nASSETS"
puts "Your total assets: #{assets}"

puts "\nPOTENTIAL GAIN"
puts "The profit gross amount: #{profit_gross}"
puts "Nett potential profit: #{nett_profit}"
puts "So, set your stop profit amount to #{stock_price_after_profit}"

puts "\nPOTENTIAL LOSS"
puts "The loss gross amount: #{loss_gross}"
puts "Nett potential loss: #{nett_loss}"
puts "So, set your stop loss amount to #{stock_price_after_loss}"

puts '============================='
puts 'Thank you. Please trade carefully :D'
