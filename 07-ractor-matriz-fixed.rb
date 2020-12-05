require 'matrix'

ractors = []
rands = 24.times.map{ rand }
rands.freeze

12.times do |i|
  ractors << Ractor.new(rands[i], rands[23 - i]) do |ix, iy|
    x = Matrix.build(200) { ix }
    y = Matrix.build(200) { iy }

    x * y
  end
end

ractors.each(&:take)
p 'feito!'
