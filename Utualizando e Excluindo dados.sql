-- Atualizando dados

UPDATE tipos_produtos SET tipo = 'Bijuterias' WHERE id = 4;
SELECT * from produtos_compra;
UPDATE produtos SET preco_venda = '4.16', id_tipo_produto = 1, id_fabricante = 1 WHERE id =2;

UPDATE produtos_compra SET id_compra = 2, id_produto = 1, quantidade = 100 WHERE id = 2;
 
-- Excluindo dados

SELECT * FROM  produtos_compra;
DELETE FROM receitas_medica WHERE id_produto_compra = 3;
DELETE FROM produtos_compra WHERE id = 3;

