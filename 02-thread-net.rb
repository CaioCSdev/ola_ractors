require 'net/http'

threads = []
5.times do
  threads << Thread.new { Net::HTTP.get('example.com', '/index.html') }
end

threads.each(&:join)
p 'feito!'
