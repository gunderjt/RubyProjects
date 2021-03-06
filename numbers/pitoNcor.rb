class Float
  def round_to(n)
    (self * 10**n).round.to_f / 10**n
  end
end

puts "Enter N\n"
digits = STDIN.gets.chomp
digits = digits.to_i
pi = Math::PI
puts pi.round_to([20, digits].min)

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
