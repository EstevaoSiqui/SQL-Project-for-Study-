# Inserindo dados de teste

-- Tipos produtos
 INSERT INTO tipos_produtos (tipo) VALUES ('Remédios');
 INSERT INTO tipos_produtos (tipo) VALUES ('Cosmésticos');
 INSERT INTO tipos_produtos (tipo) VALUES ('Diversos');

-- fabricantes
INSERT INTO fabricantes (fabricante) VALUES ('Roche');
INSERT INTO fabricantes (fabricante) VALUES ('Vitalis');
INSERT INTO fabricantes (fabricante) VALUES ('Palmolive');

-- Medicos

INSERT INTO medicos (medico, crm) VALUES ('Alfredo Muniz', '15123224');
INSERT INTO medicos (medico, crm) VALUES ('Fernanda Alvez', '32467125MG');
INSERT INTO medicos (medico, crm) VALUES ('Jorge Cavalcante', '151589524BH'); 

-- Clientes

INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
	VALUES ('Felicity Jones','Rua da paz, 34','(11) 34229173','34-567-098','Santos','70357126661');
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
	VALUES ('Raquel Antonela','Rua da conceição, 16','(61) 3422201731','34-254-098','BH','70789126661');
INSERT INTO clientes (nome, endereco, telefone, cep, localidade, cpf) 
	VALUES ('Jonatas Albuquerque','Rua Nunes, 12','(11) 34119173','34-159-098','Bahia','70357126456');
    
-- Produtos
INSERT INTO produtos (nome, desiguinacao,composicao,preco_venda,id_tipo_produto, id_fabricante)
	VALUES ('Dipirona', 'Dores em geral', 'Metilpropileno', '12.44', 1,1);
INSERT INTO produtos (nome, desiguinacao,composicao,preco_venda,id_tipo_produto, id_fabricante)
	VALUES ('Sabonete', 'Lavagem', 'Hidróxido de sódio e Potássio', '3.56', 2,2);
INSERT INTO produtos (nome, desiguinacao,composicao,preco_venda,id_tipo_produto, id_fabricante)
	VALUES ('Protetor Solar', 'Protetor Solar', 'Oxibezona', '45.90', 2,1);
    
-- Compras
INSERT INTO compras (id_cliente, data_de_compra) VALUES ('1', '2022-02-20');
INSERT INTO compras (id_cliente, data_de_compra) VALUES ('2', '2022-03-20');
INSERT INTO compras (id_cliente, data_de_compra) VALUES ('3', '2022-12-19');

-- Produtos_compra
INSERT INTO produtos_compra(id_compra,id_produto,quantidade) value(1,1,3);
INSERT INTO produtos_compra(id_compra,id_produto,quantidade) value(1,2,3);
INSERT INTO produtos_compra(id_compra,id_produto,quantidade) value(2,3,1);

-- Receitas medicas
INSERT INTO receitas_medica(id_produto_compra, id_medico,receitas) values (1,1,'receita1.pdf');
INSERT INTO receitas_medica(id_produto_compra, id_medico,receitas) values (3,2,'receita2.pdf');
