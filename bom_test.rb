file = File.open('sample.csv', "r:bom|utf-8")
puts "Skips the bom character:"
puts file.readline.bytes.first != "\xEF".bytes.first # true - no BOM character
puts "Rewinding..."
file.rewind
puts "\nSkips the bom character:"
puts file.readline.bytes.first != "\xEF".bytes.first # false - BOM character
