require 'erb'

x = 42
template = ERB.new "The value of x is: <%= x %>"
puts template.result(binding)

arr = ['cats', 'dogs', 'birds']

arr.each do |x|
	str = ERB.new "arr is <%= x %>"
	puts str.result(binding)
end

s = "hello"
str = ERB.new "<h2> <%= s %>  </h2>"
puts str.result(binding)