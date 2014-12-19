class Prime

  def self.prime?(number)
    return false if number <= 1 || !number.integer?
    for i in 2..Math.sqrt(number).to_i
      return false if (number % i == 0)
    end
    true
  end

  def self.each(size)
    primes = self.sequence
    return primes unless block_given?
    size.times { yield primes.next }
  end

  def self.first(size)
    self.sequence.take(size)
  end

private
  def self.sequence
    Enumerator.new do |y|
      n = 2
      loop do
        y << n if self.prime?(n)
        n += 1
      end
    end
  end

end