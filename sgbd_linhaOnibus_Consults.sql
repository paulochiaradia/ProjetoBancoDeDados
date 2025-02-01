SELECT fun.cod_Funcionario, fun.nome
FROM Funcionario fun, Empresa e, Funcionario_Empresa fe
WHERE fun.cod_Funcionario = fe.cod_Funcionario
AND e.cod_Empresa = fe.cod_Empresa
AND fun.tipo = 'Motorista'
AND fe.cod_Empresa = 1;

SELECT o.placa
FROM onibus o, transacao_bilhetagem trans_b,transacao_bilhete trans_bi,transacao_onibus trans_o
WHERE o.placa = trans_o.placa 
AND trans_b.cod_transacao = trans_o.cod_transacao 
AND trans_b.cod_transacao = trans_bi.cod_transacao
AND trans_bi.tipo = 'Passe de Estudante';

SELECT e.cod_empresa,e.nome
FROM empresa e, transacao_bilhetagem trans_b,transacao_pagamento trans_p,transacao_empresa trans_e
WHERE e.cod_empresa = trans_e.cod_empresa
AND trans_b.cod_transacao = trans_e.cod_transacao 
AND trans_b.cod_transacao = trans_p.cod_transacao
AND trans_p.metodo = 'Dinheiro';

SELECT o.placa, o.modelo, o.Capacidade
FROM onibus o
JOIN empresa_onibus eo ON o.placa = eo.placa
JOIN empresa e ON eo.cod_Empresa = e.cod_Empresa
WHERE e.Nome = 'Viação Delta';

SELECT f.nome, fc.treinamentos, fc.reclamacoes
FROM funcionario f
JOIN funcionario_cobrador fc ON f.cod_Funcionario = fc.cod_Funcionario
JOIN funcionario_empresa fe ON fe.cod_Funcionario = f.cod_Funcionario
JOIN empresa e ON e.cod_Empresa = fe.cod_Empresa
WHERE e.Nome = 'Transportes Epsilon';

SELECT f.nome, fm.cnh
FROM funcionario f
LEFT JOIN funcionario_motorista fm ON f.cod_Funcionario = fm.cod_Funcionario;

SELECT g.cod_Garagem, g.endereco, g_o.placa
FROM garagem g
LEFT JOIN garagem_onibus g_o ON g.cod_Garagem = g_o.cod_Garagem
LEFT JOIN onibus o ON o.placa = g_o.placa;

SELECT e.nome, COUNT(fe.cod_Funcionario) AS Num_Funcionarios
FROM empresa e
LEFT JOIN funcionario_empresa fe ON fe.cod_Empresa = e.cod_Empresa
GROUP BY e.cod_Empresa;

SELECT e.nome, AVG(o.quilometragem) AS Media_Quilometragem
FROM empresa e
JOIN empresa_onibus e_o ON e.cod_Empresa = e_o.cod_Empresa
JOIN onibus o ON o.placa = e_o.placa
GROUP BY e.cod_Empresa;

SELECT f.nome, fc.treinamentos
FROM funcionario f
JOIN funcionario_cobrador fc ON f.cod_Funcionario = fc.cod_Funcionario
HAVING fc.treinamentos > 2;

SELECT e.nome, AVG(f_m.infracoes) AS Media_Infrações
FROM empresa e
LEFT JOIN funcionario_empresa f_e ON e.cod_Empresa = f_e.cod_Empresa
JOIN funcionario f ON f_e.cod_Funcionario = f.cod_Funcionario
JOIN funcionario_motorista f_m ON f_m.cod_Funcionario = f.cod_Funcionario
GROUP BY e.cod_Empresa;

SELECT e.nome, o.modelo, COUNT(o.modelo) AS Count_Modelo
FROM empresa e
JOIN empresa_onibus e_o ON e.cod_Empresa = e_o.cod_Empresa
JOIN onibus o ON o.placa = e_o.placa
GROUP BY e.nome, o.modelo
ORDER BY e.cod_Empresa;