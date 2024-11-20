-- Recuperar todas as ordens de serviço que estão com status "Em andamento":

SELECT * FROM OS
WHERE status = 'Em andamento';

-- Recuperar veículos fabricados após 2020:

SELECT * FROM Veiculo
WHERE ano > 2020;


-- Calcular o custo total de cada peça da OS considerando a quantidade 

SELECT idPecasOS, Quantidade, (Quantidade * valor) AS CustoTotal
FROM PecasOS
JOIN Peca ON PecasOS.Peca_idpeca = Peca.idpeca;


-- Calcular o custo total da mão de obra somada com peças para uma ordem de serviço específica

SELECT OS.idOS, OS.numeroOS, 
       SUM(MaoDeObra.valor) AS CustoMaoDeObra,
       SUM(PecasOS.Subtotal) AS CustoPecas,
       SUM(MaoDeObra.valor + PecasOS.Subtotal) AS CustoTotal
FROM OS
LEFT JOIN MaoDeObra ON OS.idOS = MaoDeObra.OS_idOS
LEFT JOIN PecasOS ON OS.idOS = PecasOS.OS_idOS
WHERE OS.idOS = 1;

-- Ordenar clientes por nome em ordem alfabética:

SELECT * FROM Cliente
ORDER BY nome ASC;


-- Recuperar todas as ordens de serviço com custo total (peças + mão de obra) superior a 1500:

SELECT OS.idOS, SUM(MaoDeObra.valor + PecasOS.Subtotal) AS CustoTotal
FROM OS
LEFT JOIN MaoDeObra ON OS.idOS = MaoDeObra.OS_idOS
LEFT JOIN PecasOS ON OS.idOS = PecasOS.OS_idOS
GROUP BY OS.idOS
HAVING CustoTotal > 1500;

