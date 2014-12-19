require 'prime'

def print_prime_table(size)
  primes = Prime.first(size)

  print "X\t"
  primes.each do |i|
    print "#{i}\t"
  end
  puts

  primes.each do |i|
    print "#{i}\t"
    primes.each do |j|
      print "#{i * j}\t"
    end
    puts
  end
end

print_prime_table(10)