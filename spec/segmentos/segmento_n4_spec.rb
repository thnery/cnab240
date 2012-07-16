require 'spec_helper'

include Cnab240

describe SegmentoN4 do

	it "deve instanciar segmento" do
		segmento = SegmentoN4.new
		segmento.should be_an_instance_of(SegmentoN4)
	end

	it "deve conter campos" do
		segmento = SegmentoN4.new

		segmento.should respond_to(:receita)
		segmento.should respond_to(:tipo_identificacao_contribuinte)
		segmento.should respond_to(:identificacao_contribuinte)
		segmento.should respond_to(:identificacao_tributo)
		
		segmento.should respond_to(:vencimento)
		segmento.should respond_to(:ie_munic_declar)
		segmento.should respond_to(:divida_ativa_etiqueta)
		segmento.should respond_to(:periodo_referencia)
		segmento.should respond_to(:numero_parcela_notificacao)
		segmento.should respond_to(:valor_receita)
		segmento.should respond_to(:valor_juros_encargos)
		segmento.should respond_to(:valor_multa)

		segmento.should respond_to(:cnab)

	end

	it "deve ter 120 caracteres" do
		segmento = SegmentoN4.new
		segmento.linha.length.should be(120)
	end

end