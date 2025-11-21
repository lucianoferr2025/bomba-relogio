module Armazenamento (
	input logic [17:11] SW, //corresponde às chaves SW[17:11], sendo [17:14] para A e [13:11] para B. Usei SW ao invés de SENHA, por precaução.
	input logic start, //botão key[0]. Alterei o nome para corresponder ao nome dado nas instruções do projeto
	input logic clk, // ligado ao fio de clock da placa FPGA
	output logic [3:0] A, //senha A
	output logic [2:0] B  //senha B
);

//atribuição de valores, os 4 primeiros da esquerda para a direita para a senha A e os outros 3, para a senha B.

	always_ff @(posedge clk) begin //o clock vai capturar o apertar do botão durante a borda de subida
		if (start) begin 
			assign A = SW[17:14];
			assign B = SW[13:11];
		end
	end

endmodule
