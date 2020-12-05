require 'net/http'

5.times { Net::HTTP.get('example.com', '/index.html') }
p 'feito!'
