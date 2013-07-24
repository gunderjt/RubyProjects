puts "Enter N\n"
n = STDIN.gets.chomp
n = n.to_i
pi = Math::PI
string = pi.to_s
string.slice!(1)
if n < 1
  puts "N too small"
elsif n < 20
  puts string[n-1]
else
  puts "N too large"
end

=begin
n = 6
pi = Math::PI
string = pi.to_s
string.slice!(1)

if n < 20
  puts string[n+1]
else
  puts "N too large"
end
=end
