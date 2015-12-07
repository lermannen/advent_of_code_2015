require 'digest'

count = 1
input = "bgvyzdsv"
d = loop.each do
  digest = Digest::MD5.hexdigest(input + count.to_s)
  break(count) if digest.chars.take(5).all? { |i| i == "0" }
  count += 1
end

p d
