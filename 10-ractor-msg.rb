msg = 'Ruby Summit'

r = Ractor.new(msg) do |mensagem|
  "Olá #{mensagem}"
end

p r.take
