def prime(n, primeArr)
  if n <= 1
    return primeArr
  elsif n.%(2).zero?
    primeArr.push(2)
    return prime(n/2, primeArr)
  elsif n.%(3).zero?
    primeArr.push(3)
    return prime(n/3, primeArr)
  elsif n.%(5).zero?
    primeArr.push(5)
    return prime(n/5, primeArr)
  elsif n.%(7).zero?
    primeArr.push(7)
    return prime(n/7, primeArr)
  elsif n.%(13).zero?
    primeArr.push(13)
    return prime(n/13, primeArr)
  else
    puts "PrimeFactor too high to check"
  end
end

puts "Enter N\n"
n = STDIN.gets.chomp
n = n.to_i
primeArr = Array.new

primeArr = prime(n, primeArr)

puts "The prime Factor for #{n} is:"

primeArr.each { |num|
  puts num
}
