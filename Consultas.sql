# Consultas Simples e complexas

-- Tipos produtos

SELECT * FROM tipos_produtos;
SELECT id, tipo FROM tipos_produtos;
SELECT tipo, id FROM tipos_produtos;
SELECT id FROM tipos_produtos ORDER BY tipo DESC;

-- Frabricantes
SELECT * FROM fabricantes;

-- Médicos
SELECT * FROM medicos;

-- compras
SELECT * FROM compras;

SELECT com.id as 'Id do cliente', cli.nome as 'Cliente', com.data_de_compra as 'Data compra' 
	FROM compras AS com, clientes as cli WHERE com.id_cliente = cli.id;
    
SELECT com.id AS 'Venda', 
	cli.nome AS 'Cliente', 
	prod.nome as 'produto',
    com.data_de_compra AS 'Data da Compra',
    sum(prod.preco_venda * proc.quantidade) as 'Total'
    FROM produtos_compra AS proc, produtos AS prod, compras AS com, clientes AS cli
    WHERE com.id = proc.id_compra AND prod.id = proc.id_produto AND cli.id = com.id_cliente
    GROUP BY com.id;
