require 'matrix'

12.times do
  x = Matrix.build(200) { rand }
  y = Matrix.build(200) { rand }

  x * y
end

p 'feito!'
