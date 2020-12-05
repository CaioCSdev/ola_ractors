require 'matrix'

ractors = []

12.times do
  ractors << Ractor.new do
    x = Matrix.build(200) { rand }
    y = Matrix.build(200) { rand }

    x * y
  end
end

ractors.each(&:take)
p 'feito!'
