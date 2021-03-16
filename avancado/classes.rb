class Conta
    attr_accessor :saldo #Nao podemos criar um atributo nulo e atribuir um valor sem definir o tipo

    def deposita(valor)
        self.saldo += valor
        puts "Depositando a quantia de #{valor} reais"
    end

end

c = Conta.new

c.saldo = 0.0 # Aqui definimos o tipo
c.deposita(100.00)
puts c.saldo