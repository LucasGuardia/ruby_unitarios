class Veiculo
    attr_accessor :nome, :marca, :modelo

    def initialize(nome, marca, modelo)
        self.nome = nome
        self.marca = marca
        self.modelo = modelo
    end

    def Ligar
        puts "#{nome} está pronto para iniciar o trajeto!"
    end

    def Buzinar
        puts 'Beep, Beep.'
    end
end

class Carro < Veiculo
    def Dirigir
        puts "#{nome} iniciando o trajeto."
    end
end

class Moto < Veiculo
    def Pilotar
        puts "#{nome} iniciando o trajeto."
    end
end

civic = Carro.new('Onix', 'GM', 'LTZ')
civic.Ligar
civic.Buzinar

lancer = Carro.new('Lancer', 'Mitsubishi', 'EVO')
lancer.Ligar
lancer.Buzinar

fazer = Moto.new('Fazer', 'Yamaha', '250x')
fazer.Ligar
fazer.Buzinar
fazer.Pilotar