require 'digest'

def find_digest(leading_zeroes)
  input = "bgvyzdsv"
  count = 1

  loop.each do
    digest = Digest::MD5.hexdigest(input + count.to_s)
    break(count) if digest.chars.take(leading_zeroes).all? { |i| i == "0" }
    count += 1
  end
end

p find_digest(5)
p find_digest(6)
