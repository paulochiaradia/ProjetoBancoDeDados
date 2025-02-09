INSERT INTO Fornecedor (cod_Fornecedor, nome, endereco, telefone, tipo, CNPJ) VALUES
(1, 'Manutenção Veicular Max', 'Rua das Oficinas, 123', '(12) 9999-1111', 'Serviço', '11.222.333/0001-01'),
(2, 'Combustíveis Delta', 'Avenida do Petróleo, 456', '(13) 8888-2222', 'Produto', '22.333.444/0001-02'),
(3, 'Peças Gamma', 'Estrada dos Motores, 789', '(14) 7777-3333', 'Produto', '33.444.555/0001-03'),
(4, 'Limpeza Ônibus Pro', 'Travessa Higiene, 101', '(15) 6666-4444', 'Serviço', '44.555.666/0001-04'),
(5, 'Pneus Epsilon', 'Alameda Rodas, 202', '(16) 5555-5555', 'Produto', '55.666.777/0001-05'),
(6, 'Segurança Veicular Zeta', 'Rua dos Alarmes, 303', '(17) 4444-6666', 'Serviço', '66.777.888/0001-06'),
(7, 'Estofados Prime', 'Avenida Conforto, 404', '(18) 3333-7777', 'Produto', '77.888.999/0001-07'),
(8, 'Sistema de Rastreio TrackBus', 'Boulevard Digital, 505', '(19) 2222-8888', 'Serviço', '88.999.000/0001-08'),
(9, 'Óleos Lubrificantes Alpha', 'Estrada dos Lubrificantes, 606', '(20) 1111-9999', 'Produto', '99.000.111/0001-09'),
(10, 'Consultoria Operacional Beta', 'Praça da Estratégia, 707', '(21) 0000-1111', 'Serviço', '10.111.222/0001-10');

INSERT INTO Empresa (cod_Empresa, nome, endereco, telefone, CNPJ) VALUES
(1, 'Transporte Alpha', 'Rua das Flores, 123', '(12) 3456-7890', '12.345.678/0001-01'),
(2, 'Ônibus Beta', 'Avenida Central, 456', '(11) 9876-5432', '98.765.432/0001-02'),
(3, 'Expresso Gamma', 'Praça da Liberdade, 789', '(21) 2345-6789', '23.456.789/0001-03'),
(4, 'Viação Delta', 'Rua Esperança, 101', '(31) 9987-6543', '34.567.890/0001-04'),
(5, 'Transportes Epsilon', 'Avenida Paulista, 202', '(41) 8877-6655', '45.678.901/0001-05'),
(6, 'Frota Zeta', 'Rua das Palmeiras, 303', '(51) 7766-5544', '56.789.012/0001-06'),
(7, 'Via Rápida Eta', 'Alameda Santos, 404', '(61) 6655-4433', '67.890.123/0001-07'),
(8, 'Expresso Theta', 'Boulevard Rio Branco, 505', '(71) 5544-3322', '78.901.234/0001-08'),
(9, 'Ônibus Iota', 'Travessa do Sol, 606', '(81) 4433-2211', '89.012.345/0001-09'),
(10, 'Rodovia Kappa', 'Estrada Nova, 707', '(91) 3322-1100', '90.123.456/0001-10');

INSERT INTO Fornecedor_Empresa (cod_Empresa, cod_Fornecedor) VALUES
(1, 1), 
(1, 2), 
(2, 3), 
(2, 4), 
(3, 5), 
(4, 6), 
(5, 7), 
(6, 8), 
(7, 9),
(8, 10);

INSERT INTO Funcionario (cod_Funcionario, nome, endereco, telefone, CPF, num_Carteira_Trabalho, tipo) VALUES
(1, 'João Silva', 'Rua das Flores, 123', '11987654321', '123.456.789-00', 10101, 'Motorista'),
(2, 'Maria Oliveira', 'Avenida Brasil, 456', '11998765432', '987.654.321-11', 10102, 'Cobrador'),
(3, 'Carlos Santos', 'Travessa do Sol, 789', '11999887766', '321.654.987-22', 10103, 'Motorista'),
(4, 'Ana Costa', 'Rua do Campo, 321', '11988776655', '654.321.987-33', 10104, 'Cobrador'),
(5, 'Rafael Lima', 'Praça Central, 111', '11977665544', '111.222.333-44', 10105, 'Motorista'),
(6, 'Fernanda Souza', 'Vila Nova, 222', '11966554433', '444.555.666-55', 10106, 'Cobrador'),
(7, 'Rodrigo Almeida', 'Beco da Paz, 333', '11955443322', '777.888.999-66', 10107, 'Motorista'),
(8, 'Camila Rodrigues', 'Estrada Velha, 444', '11944332211', '999.000.111-77', 10108, 'Cobrador'),
(9, 'Lucas Barbosa', 'Condomínio das Árvores, 555', '11933221100', '222.333.444-88', 10109, 'Motorista'),
(10, 'Juliana Martins', 'Loteamento Azul, 666', '11922110099', '555.666.777-99', 10110, 'Cobrador'); 

INSERT INTO Funcionario_Motorista (cnh, infracoes, cod_Funcionario) values
(123456789, 2, 1), 
(987654321, 1, 3), 
(456789123, 0, 5), 
(789123456, 3, 7), 
(321987654, 0, 9);

INSERT INTO Funcionario_Cobrador (treinamentos, reclamacoes, cod_Funcionario) VALUES
(3, 1, 2), 
(2, 0, 4), 
(4, 2, 6), 
(1, 0, 8), 
(3, 1, 10);

INSERT INTO Funcionario_Empresa (cod_Empresa, cod_Funcionario) VALUES 
(1, 1), 
(1, 2);

INSERT INTO Funcionario_Empresa (cod_Empresa, cod_Funcionario) VALUES 
(2, 3), 
(2, 4); 

INSERT INTO Funcionario_Empresa (cod_Empresa, cod_Funcionario) VALUES 
(3, 5), 
(3, 6);

INSERT INTO Funcionario_Empresa (cod_Empresa, cod_Funcionario) VALUES 
(4, 7),
(4, 8);

INSERT INTO Funcionario_Empresa (cod_Empresa, cod_Funcionario) VALUES 
(5, 9), 
(5, 10);

INSERT INTO Turno (cod_Turno, horario_Inicio, horario_Fim) VALUES
(1, 600, 1400), 
(2, 1400, 2200), 
(3, 2200, 600), 
(4, 700, 1500), 
(5, 1500, 2300);

INSERT INTO Funcionario_Turno (cod_Funcionario, cod_Turno) VALUES 
(1, 1), 
(2, 1); 

INSERT INTO Funcionario_Turno (cod_Funcionario, cod_Turno) VALUES 
(3, 2), 
(4, 2); 

INSERT INTO Funcionario_Turno (cod_Funcionario, cod_Turno) VALUES 
(5, 3), 
(6, 3); 

INSERT INTO Funcionario_Turno (cod_Funcionario, cod_Turno) VALUES 
(7, 4), 
(8, 4); 

INSERT INTO Funcionario_Turno (cod_Funcionario, cod_Turno) VALUES 
(9, 5), 
(10, 5);

INSERT INTO Garagem (cod_Garagem, endereco, capacidade) VALUES
(1, 'Rua das Palmeiras, 123', 50), 
(2, 'Av. Central, 456', 60), 
(3, 'Rua do Sol, 789', 55), 
(4, 'Rua da Liberdade, 101', 40), 
(5, 'Av. Brasil, 202', 70), 
(6, 'Rua das Flores, 303', 45), 
(7, 'Rua dos Pássaros, 404', 50), 
(8, 'Av. Marechal, 505', 60), 
(9, 'Rua do Rio, 606', 65), 
(10, 'Rua dos Andorinhas, 707', 55);

INSERT INTO Empresa_Garagem (cod_Empresa, cod_Garagem) VALUES
(1, 1), 
(2, 2), 
(3, 3), 
(4, 4), 
(5, 5), 
(6, 6), 
(7, 7), 
(8, 8), 
(9, 9), 
(10, 10); 

INSERT INTO Linha_Onibus (cod_Linha, trajeto, tempo_medio) VALUES
(1, 101, 30),
(2, 102, 45), 
(3, 103, 50), 
(4, 104, 60), 
(5, 105, 40), 
(6, 106, 35), 
(7, 107, 55),
(8, 108, 65), 
(9, 109, 50), 
(10, 110, 45); 

INSERT INTO Turno_Linha (cod_Linha, cod_Turno) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 1),
(4, 2),
(4, 3),
(5, 4),
(5, 5),
(6, 1),
(6, 2),
(7, 3),
(7, 4),
(8, 5),
(8, 1),
(9, 2),
(9, 3),
(10, 4),
(10, 5);

INSERT INTO Ponto_Onibus (cod_PontoOnibus, endereco) VALUES
(1, 'Rua da Paz, 101'),
(2, 'Avenida das Nações, 202'),
(3, 'Rua do Sol, 303'),
(4, 'Avenida dos Trabalhadores, 404'),
(5, 'Rua do Campo, 505'),
(6, 'Avenida Parque, 606'),
(7, 'Rua da Liberdade, 707'),
(8, 'Avenida São Paulo, 808'),
(9, 'Rua dos Eucaliptos, 909'),
(10, 'Avenida das Américas, 1001');

INSERT INTO Ponto_LinhaOnibus (cod_Linha, cod_PontoOnibus) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 1),
(6, 3),
(7, 2),
(7, 4),
(8, 5),
(8, 7),
(9, 6),
(9, 8),
(10, 9),
(10, 10);

INSERT INTO Onibus (placa, modelo, capacidade, data_manutencao, quilometragem, fabricante) VALUES
('ABC1234', 'Scania K360', 50, 20230115, 150000, 'Scania'),
('DEF5678', 'Mercedes-Benz OF 1721', 40, 20231020, 90000, 'Mercedes-Benz'),
('GHI9876', 'Volvo B270F', 45, 20230910, 120000, 'Volvo'),
('JKL3456', 'Caio F3500', 30, 20231105, 50000, 'Caio'),
('MNO2345', 'Marcopolo Paradiso', 55, 20221205, 180000, 'Marcopolo'),
('PQR6789', 'Mercedes-Benz O500', 60, 20230817, 130000, 'Mercedes-Benz'),
('STU4567', 'Volvo B380R', 50, 20220930, 110000, 'Volvo'),
('VWX1234', 'Scania K400', 55, 20230522, 80000, 'Scania'),
('YZT6789', 'Caio F2230', 45, 20230415, 140000, 'Caio'),
('ABC9876', 'MarcopoLO Torino', 40, 20230125, 100000, 'Marcopolo'),
('BCD2345', 'Scania K360', 50, 20231012, 135000, 'Scania'),
('DEF3456', 'Mercedes-Benz OF 1721', 40, 20230901, 105000, 'Mercedes-Benz'),
('GHI6789', 'Volvo B270F', 45, 20231030, 95000, 'Volvo'),
('JKL1234', 'Caio F3500', 30, 20231210, 85000, 'Caio'),
('MNO5678', 'Marcopolo Paradiso', 55, 20230815, 160000, 'Marcopolo'),
('PQR2345', 'Mercedes-Benz O500', 60, 20230105, 110000, 'Mercedes-Benz'),
('STU3456', 'Volvo B380R', 50, 20230420, 125000, 'Volvo'),
('VWX5678', 'Scania K400', 55, 20231205, 72000, 'Scania'),
('YZT1234', 'Caio F2230', 45, 20230210, 100000, 'Caio'),
('ABC6789', 'Marcopolo Torino', 40, 20230720, 92000, 'Marcopolo');

INSERT INTO Empresa_Onibus (cod_Empresa, placa) VALUES
(1, 'ABC1234'),
(1, 'DEF5678'),
(2, 'GHI9876'),
(2, 'JKL3456'),
(2, 'MNO2345'),
(3, 'PQR6789'),
(3, 'STU4567'),
(3, 'VWX1234'),
(4, 'YZT6789'),
(5, 'ABC9876'),
(5, 'BCD2345'),
(6, 'DEF3456'),
(6, 'GHI6789'),
(7, 'JKL1234'),
(7, 'MNO5678'),
(8, 'PQR2345'),
(8, 'STU3456'),
(9, 'VWX5678'),
(9, 'YZT1234'),
(10, 'ABC6789');

INSERT INTO Funcionario_Onibus (cod_Funcionario, placa) VALUES
(1, 'ABC1234'),
(2, 'DEF5678'),
(3, 'GHI9876'),
(4, 'JKL3456'),
(5, 'MNO2345'),
(6, 'PQR6789'),
(7, 'STU4567'),
(8, 'VWX1234'),
(9, 'YZT6789'),
(10, 'ABC9876');

INSERT INTO Garagem_Onibus (cod_Garagem, placa, num_vaga) VALUES
(1, 'ABC1234', 1),
(1, 'DEF5678', 2),
(1, 'GHI9876', 3),
(2, 'JKL3456', 1),
(2, 'MNO2345', 2),
(2, 'PQR6789', 3),
(3, 'STU4567', 1),
(3, 'VWX1234', 2),
(4, 'YZT6789', 1),
(4, 'ABC9876', 2),
(4, 'BCD2345', 3),
(5, 'DEF3456', 1),
(5, 'GHI6789', 2),
(5, 'JKL1234', 3),
(6, 'MNO5678', 1),
(6, 'PQR2345', 2),
(7, 'STU3456', 1),
(7, 'VWX5678', 2),
(8, 'YZT1234', 1),
(8, 'ABC6789', 1);

INSERT INTO LinhaOnibus_Onibus (cod_Linha, placa) VALUES
(1, 'ABC1234'),
(1, 'DEF5678'),
(1, 'GHI9876'),
(2, 'JKL3456'),
(2, 'MNO2345'),
(3, 'PQR6789'),
(3, 'STU4567'),
(3, 'VWX1234'),
(4, 'YZT6789'),
(4, 'ABC9876'),
(5, 'BCD2345'),
(5, 'DEF3456'),
(6, 'GHI6789'),
(7, 'JKL1234'),
(7, 'MNO5678'),
(8, 'PQR2345'),
(8, 'STU3456'),
(9, 'VWX5678'),
(10, 'YZT1234'),
(10, 'ABC6789');

INSERT INTO Transacao_Bilhetagem (cod_transacao, forma) VALUES
(1, 'Cartão'),
(2, 'Dinheiro'),
(3, 'Cartão'),
(4, 'Cartão'),
(5, 'Dinheiro'),
(6, 'Cartão'),
(7, 'Dinheiro'),
(8, 'Cartão'),
(9, 'Cartão'),
(10, 'Dinheiro'),
(11, 'Cartão de Estudante'),
(12, 'Cartão de Idoso'),
(13, 'Cartão'),
(14, 'Cartão de Estudante'),
(15, 'Cartão de Idoso'),
(16, 'Dinheiro'),
(17, 'Cartão'),
(18, 'Cartão de Estudante'),
(19, 'Dinheiro'),
(20, 'Cartão de Idoso');

INSERT INTO Transacao_Bilhete (tipo, cod_transacao) VALUES
('Passe de Estudante', 1),
('Bilhete Único', 3),
('Passe de Idoso', 5),
('Bilhete Único', 6),
('Passe de Estudante', 8),
('Passe de Idoso', 10),
('Bilhete Único', 12),
('Passe de Estudante', 14),
('Bilhete Único', 16),
('Passe de Idoso', 18),
('Passe de Estudante', 20);

INSERT INTO Transacao_Pagamento (metodo, cod_transacao) VALUES
('Dinheiro', 2),
('Débito', 4),
('Crédito', 7),
('Débito', 9),
('Dinheiro', 11),
('Crédito', 13),
('Débito', 15),
('Dinheiro', 17),
('Crédito', 19),
('Débito', 20);

INSERT INTO Transacao_Empresa (cod_Empresa, cod_transacao) VALUES
(1, 1),
(1, 2),
(2, 3),
(2, 4),
(3, 5),
(3, 6),
(4, 7),
(4, 8),
(5, 9),
(5, 10),
(6, 11),
(6, 12),
(7, 13),
(7, 14),
(8, 15),
(8, 16),
(9, 17),
(9, 18),
(10, 19),
(10, 20);

INSERT INTO Transacao_Onibus (placa, cod_transacao) VALUES
('ABC1234', 1),
('ABC1234', 2),
('DEF5678', 3),
('DEF5678', 4),
('GHI9876', 5),
('GHI9876', 6),
('JKL3456', 7),
('JKL3456', 8),
('MNO2345', 9),
('MNO2345', 10),
('PQR6789', 11),
('PQR6789', 12),
('STU4567', 13),
('STU4567', 14),
('VWX1234', 15),
('VWX1234', 16),
('YZT6789', 17),
('ABC9876', 18),
('BCD2345', 19),
('DEF3456', 20);
