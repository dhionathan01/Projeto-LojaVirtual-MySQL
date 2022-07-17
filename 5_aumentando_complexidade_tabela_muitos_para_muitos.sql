CREATE TABLE tb_clientes(
	id_cliente INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(100) NOT NULL,
    idade INT(3) NOT NULL
);

CREATE TABLE tb_pedidos(
	id_pedido INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fk_id_cliente INT NOT NULL,
    data_hora DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY(fk_id_cliente) REFERENCES tb_clientes(id_cliente)
);

CREATE TABLE tb_pedidos_produtos( /* MUITOS PARA MUITOS */
	fk_id_produto INT NOT NULL,
    fk_id_pedido INT NOT NULL,
    FOREIGN KEY(fk_id_produto) REFERENCES tb_produtos(id_produto),
    FOREIGN KEY(fk_id_pedido) REFERENCES tb_pedidos(id_pedido)
);