class Conta
    attr_accessor :saldo, :nome #Atributo da classe 

    def initialize (nome)          #Esse metodo initialize é um construtor
        self.saldo = 0
        self.nome = nome
    end

    def deposita(valor)
        self.saldo += valor
        puts "Depositando a quantia de #{valor} reais na conta de #{self.nome}"
    end

end

c = Conta.new('Lucao')

c.deposita(100.00)
puts c.saldo

c.deposita(10.00)
puts c.saldo
puts c.nome