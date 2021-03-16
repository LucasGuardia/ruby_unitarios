class AvengersHeadQuarter
    attr_accessor :list             #aqui criamos um atributo na classe

    def initialize
        self.list = []              #aqui pegamos a lista e incializamos ela transformando em um array
    end

    def put(avenger)                #aqui criamos um metodo com parametro
        self.list.push(avenger)     #aqui com o self lemos o atributo list e com o push inserimos na lista
    end
    
end

#TDD (Desenvolvimento guiado por testes)
describe AvengersHeadQuarter do
    
    it 'Deve adicionar um vingador' do
        hq = AvengersHeadQuarter.new

        hq.put('Spiderman')                   #put é o metodo criado para adicionar um avenger na lista
        expect(hq.list).to eql ['Spiderman']  #aqui pegamos o array hq e com o .list acessamos a lista que é uma string para comparar com Spiderman
    end

    it 'deve adicionar uma lista de vingadores' do

        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        expect(hq.list).to include 'Thor'   #.to include verifica se Thor existe na lista de avengers
        expect(hq.list.size).to be > 0      #metodo size só funciona para listas e aqui vemos se a lista é maior que 0
        
        res = hq.list.size > 0              #aqui verificamos se o retorno é true ou false
        expect(res).to be true              #e aqui validamos
    
    end

    it 'Thor deve ser o primeiro da lista' do
    
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')

        expect(hq.list).to start_with('Thor')

    end

    it 'Ironman deve ser o ultimo da lista' do
    
        hq = AvengersHeadQuarter.new
        hq.put('Thor')
        hq.put('Hulk')
        hq.put('Spiderman')
        hq.put('Ironman')

        expect(hq.list).to end_with('Ironman')

    end

    it 'deve conter sobrenome' do
        avenger = 'Peter Parker'

        expect(avenger).to match(/Parker/)
        expect(avenger).not_to match(/Guardia/)
    end

end