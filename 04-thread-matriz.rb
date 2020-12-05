require 'matrix'

threads = []

12.times do
  threads << Thread.new do
    x = Matrix.build(200) { rand }
    y = Matrix.build(200) { rand }

    x * y
  end
end

threads.each(&:join)
p 'feito!'
