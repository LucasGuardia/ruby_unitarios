require_relative '../../app/bank'

describe ContaPoupanca do

  describe '#saca' do
    subject { cp.saca(valor) }

    let(:cp) { described_class.new(saldo_inicial) }

    context 'quando o valor é positivo' do
    let(:saldo_inicial) { 1_000.0 }
    let(:valor) { 200 }
    it 'entao atualiza saldo' do
        subject
        
        expect(cp.saldo).to eql 798.00
    end
    context 'quando o saldo é zero' do
        let(:saldo_inicial) { 0 }
        let(:valor) { 100 }
        
        it 'então exibe mensagem' do
        subject
        
        expect(cp.mensagem).to eql 'Saldo insuficiente para saque'
        end
        
    it 'e o saldo final com zeros' do
        subject
        
        expect(cp.saldo).to eql 0.00
    end
      end
      
      context 'quando o saldo é menor que o saque' do
        let(:saldo_inicial) { 500 }
        let(:valor) { 501 }

        it 'então exibe mensagem' do
          subject
          
          expect(cp.mensagem).to eql 'Saldo insuficiente para saque'
        end
        
        it 'e o saldo permanece' do
          subject
          
          expect(cp.saldo).to eql (500.00)
        end
      end
      
      context 'quando supera o limite de saque' do
        let(:saldo_inicial) { 1000 }
        let(:valor) { 501 }

        it 'então exibe mensagem' do
          subject
          
          expect(cp.mensagem).to eql 'Limite máximo por saque é de R$ 500'
        end
        
        it 'e o saldo permanece' do
          subject
          
          expect(cp.saldo).to eql 1000.00
        end
      end
    end
  end
end