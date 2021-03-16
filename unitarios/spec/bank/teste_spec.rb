class Eleitor
    attr_accessor :mensagem

    def eleitor1(idade)
        if (idade < 18)
            self.mensagem = 'Menor de idade'
        else
            self.mensagem = 'Maior de idade'
        end
    end
end

describe Eleitor do
    describe 'Pessoa' do
        context 'Idade' do
            before(:all) do
                @cp = Eleitor.new
                @cp.eleitor1(18)
            end
            it 'deve ser maior de idade' do
                expect(@cp.mensagem).to eql 'Maior de idade'
            end
        end
    end

    describe 'Pessoa' do
        context 'Idade' do
            before(:all) do
                @cp = Eleitor.new
                @cp.eleitor1(17)
            end
            it 'deve ser menor de idade' do
                expect(@cp.mensagem).to eql 'Menor de idade'
            end
        end
    end
end

