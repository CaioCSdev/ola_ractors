r = Ractor.new do
  mensagem = Ractor.recv
  "Olá #{mensagem}"
end

r << 'Ruby Summit 👋'
p r.take
