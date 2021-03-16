# Ruby é puramente orientado a objeto, tudo sao objetos
# classe possui atributos e metodos

class Carro
    attr_accessor :nome  # Aqui sao atributos do carro

    def ligar
        puts 'O carro esta pronto para iniciar o trajeto'
    end
    
end

civic = Carro.new
civic.nome = 'Civic'

puts civic.nome
civic.ligar

