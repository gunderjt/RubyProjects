def is_prime(n)
  (2..n-1).each do |i|
    if (n % i) == 0
      return false
    end
  end
  return true
end

def get_input
  begin
    old_state = `stty -g`
    system("stty raw -echo")
    input = STDIN.getc
  ensure
#    system("stty -raw echo")
    system "stty #{old_state}"
  end
  return input.chr
end

puts "Press e to quit or anykey to get next prime"

input = get_input
loopIter = 2

while input != 'e'
pnum = false
  while pnum == false
    loopIter += 1
    pnum = is_prime(loopIter)
  end
  puts "#{loopIter} is prime\n"
  puts "Press e to quit or anykey to get next prime"
  input = get_input

end
