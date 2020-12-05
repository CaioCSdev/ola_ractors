require 'matrix'

12.times do
  Process.fork do
    x = Matrix.build(200) { rand }
    y = Matrix.build(200) { rand }

    x * y
  end
end

Process.waitall
p 'feito!'
