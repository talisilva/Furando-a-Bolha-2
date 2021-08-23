CREATE TABLE `tb_postagem` (
	`id`  NOT NULL,
	`titulo` varchar(255) NOT NULL,
	`texto` varchar(5000) NOT NULL,
	`data` TIMESTAMP NOT NULL,
	`alteracao_data` TIMESTAMP NOT NULL,
	`tema_id`  NOT NULL,
	`usuario_id`  NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_tema` (
	`id`  NOT NULL,
	`descricao` varchar(1000) NOT NULL,
	`tema` varchar(255) NOT NULL,
	`palavra chave` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `tb_usuario` (
	`id`  NOT NULL,
	`nome` varchar(255) NOT NULL,
	`usuario` varchar(255) NOT NULL,
	`senha` varchar(500) NOT NULL,
	`tipo usuario` varchar(255) NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk0` FOREIGN KEY (`tema_id`) REFERENCES `tb_tema`(`id`);

ALTER TABLE `tb_postagem` ADD CONSTRAINT `tb_postagem_fk1` FOREIGN KEY (`usuario_id`) REFERENCES `tb_usuario`(`id`);




