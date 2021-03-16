# Hashes é um objeto no qual temos uma colecao de dados, atraves de chave e valor

carro = Hash[nome: 'Civic', marca: 'Honda', cor: 'Vermelho']

puts carro[:nome]

carro[:modelo] = 'SI' #Inserindo uma nova chave e valor no hash

puts carro[:nome]