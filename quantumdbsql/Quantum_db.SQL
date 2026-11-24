DROP TABLE IF EXISTS venda, produto, categoria, cliente
RESTART IDENTITY CASCADE;

CREATE_TABLE IF NOT EXISTS cliente(
id_cliente SERIAL, PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL UNIQUE, 
telefone BIGINT NOT NULL UNIQUE, 
endereco_cliente VARCHAR(100) NOT NULL,

)

 CREATE_TABLE IF NOT EXISTS categoria(
id_categoria SERIAL, PRIMARY KEY
descricao_categoria TEXT
)

CREATE_TABLE IF NOT EXISTS produto(
id_produto SERIAL, PRIMARY KEY,
id_categoria INT FOREING KEY REFERENCES categoria (id_categoria),
nome VARCHAR(100) NOT NULL,
descricao TEXT NOT NULL,
preco DECIMAL(10,2) NOT NULL,
validade opcional DATE 
)

CREATE_TABLE IF NOT EXISTS venda(
id_venda SERIAL, PRIMARY KEY,
data_venda DATE,
id_cliente INT FOREING KEY REFERENCES cliente(id_cliente),
id_produto INT FOREING KEY REFERENCES produto(id_produto),
preco DECIMAL(10,2) NOT NULL,
enviar_nota BOOL DEFAULT false 
)


ALTER TABLE venda
DROP CONSTRAINT IF EXISTS id_cliente;

ALTER TABLE venda 
ADD CONSTRAINT venda_cliente_fk
FOREING KEY (id_cliente) REFERENCES cliente (id_cliente)
ON DELETE RESTRICT 

ALTER TABLE produto
DROP CONSTRAINT IF EXISTS id_categoria;

ALTER TABLE produto
ADD CONSTRAINT id_categoria_fk
FOREING KEY (id_categoria) REFERENCES categoria (id_categoria)
ON DELETE CASCADE;