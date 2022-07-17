/*
 O termo 'PRIMARY KEY', define essa coluna como chave primária, ou seja não vai se repetir. 

 AUTO_INCREMENT, defini um valor N e toda vez que for adicionado algo nessa coluna será adicionado como N+1 automaticamente pelo próprio SGBD.
 */

CREATE TABLE tb_produtos(
    id_produto INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome_produto VARCHAR(200) NOT NULL,
    valor_produto FLOAT(8,2) NOT NULL
);

CREATE TABLE tb_descricoes_tenicas(
	id_descricao INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fk_id_produto INT NOT NULL,
    descricao_tecnica TEXT NOT NULL,
    FOREIGN KEY(fk_id_produto) REFERENCES tb_produtos(id_produto) /* atribuindo uma FOREIGN KEY a tabela */
);