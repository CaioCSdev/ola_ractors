ping = Ractor.new do
  r = Ractor.recv
  loop do
    msg = Ractor.recv
    puts msg
    sleep 1
    r << 'pong   \o'
  end
end

pong = Ractor.new(ping) do |r|
  loop do
    msg = Ractor.recv
    puts msg
    sleep 1
    r << 'o/   ping'
    Ractor.yield 1
  end
end

ping << pong
ping << 'o/   ping'

ping.take
