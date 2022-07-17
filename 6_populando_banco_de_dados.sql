INSERT INTO tb_clientes(nome_cliente, idade) VALUES('Dhionathan', 21)
INSERT INTO tb_pedidos(fk_id_cliente) VALUES(1)

INSERT INTO tb_pedidos_produtos(fk_id_produto, fk_id_pedido) VALUES(2, 1);
INSERT INTO tb_pedidos_produtos(fk_id_produto, fk_id_pedido) VALUES(3, 1);
INSERT INTO tb_pedidos_produtos(fk_id_pedido, fk_id_produto)
VALUES(2,3);
INSERT INTO tb_pedidos(fk_id_cliente) VALUES (2);
INSERT INTO tb_pedidos_produtos(fk_id_pedido, fk_id_produto)
VALUES(3, 1)