mundo = 'mundo'

r = Ractor.new do
  "Olá #{mundo}"
end

p r.take
