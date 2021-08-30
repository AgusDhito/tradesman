#!/usr/bin/env ruby

puts 'Welcome to margin calculator'
puts '============================='

puts 'Insert the initial modal amount:'
modal = ARGF.gets.to_f
puts 'Insert the stop profit value (%):'
profit_percentage = ARGF.gets.to_f
puts 'Insert the stop loss value (%):'
loss_percentage = ARGF.gets.to_f

# process the percentage
profit_gross = modal + ((profit_percentage / 100) * modal)
loss_gross = modal - ((loss_percentage / 100) * modal)

puts "Your stop profit amount : #{profit_gross}"
puts "Your stop loss amount : #{loss_gross} "

puts '============================='
puts 'Thank you. Please trade carefully :D'
