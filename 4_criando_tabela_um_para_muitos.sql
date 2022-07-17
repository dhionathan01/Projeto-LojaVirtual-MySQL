CREATE TABLE tb_imagens(
	id_imagem INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fk_id_produto INT NOT NULL,
    url_imagem TEXT NOT NULL,
    FOREIGN KEY(fk_id_produto) REFERENCES tb_produtos(id_produto)
);
/* Inserindo 3 imagens para cada produto por meio da foreign key */
INSERT INTO tb_imagens(
	fk_id_produto, url_imagem
)
VALUES
(1, 'notebook1.jpg'),
(1, 'notebook2.jpg'),
(1, 'notebook3.jpg');

INSERT INTO tb_imagens(
	fk_id_produto, url_imagem
)
VALUES
(2, 'smarttv_1.jpg'),
(2, 'smarttv_2.jpg'),
(2, 'smarttv_3.jpg');

INSERT INTO tb_imagens(
	fk_id_produto, url_imagem
)
VALUES
(3, 'smartphone_1.jpg'),
(3, 'smartphone_2.jpg'),
(3, 'smartphone_3.jpg');
