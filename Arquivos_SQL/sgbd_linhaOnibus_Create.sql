CREATE TABLE Fornecedor (
    cod_Fornecedor INTEGER,
    nome VARCHAR(50),
    endereco VARCHAR(50),
    telefone VARCHAR(15),
    tipo VARCHAR(50),
    CNPJ VARCHAR(50),
    PRIMARY KEY (cod_Fornecedor)
) ENGINE=InnoDB;

CREATE TABLE Empresa (
    cod_Empresa INTEGER,
    nome VARCHAR(50),
    endereco VARCHAR(50),
    telefone VARCHAR(15),
    CNPJ VARCHAR(50),
    PRIMARY KEY (cod_Empresa)
) ENGINE=InnoDB;

CREATE TABLE Fornecedor_Empresa (
    cod_Empresa INTEGER,
    cod_Fornecedor INTEGER,
    PRIMARY KEY (cod_Empresa, cod_Fornecedor),
    FOREIGN KEY (cod_Empresa) REFERENCES Empresa(cod_Empresa),
    FOREIGN KEY (cod_Fornecedor) REFERENCES Fornecedor(cod_Fornecedor)
) ENGINE=InnoDB;

CREATE TABLE Funcionario (
    cod_Funcionario INTEGER,
    nome VARCHAR(50),
    endereco VARCHAR(50),
    telefone VARCHAR(15),
    CPF VARCHAR(50),
    num_Carteira_Trabalho INTEGER,
    tipo VARCHAR(50),
    PRIMARY KEY (cod_Funcionario)
) ENGINE=InnoDB;

CREATE TABLE Funcionario_Motorista (
    cnh INTEGER,
    infracoes INTEGER,
    cod_Funcionario INTEGER,
    PRIMARY KEY (cod_Funcionario),
    FOREIGN KEY (cod_Funcionario) REFERENCES Funcionario(cod_Funcionario)
) ENGINE=InnoDB;

CREATE TABLE Funcionario_Cobrador (
    treinamentos INTEGER,
    reclamacoes INTEGER,
    cod_Funcionario INTEGER,
    PRIMARY KEY (cod_Funcionario),
    FOREIGN KEY (cod_Funcionario) REFERENCES Funcionario(cod_Funcionario)
) ENGINE=InnoDB;

CREATE TABLE Funcionario_Empresa (
    cod_Empresa INTEGER,
    cod_Funcionario INTEGER,
    PRIMARY KEY (cod_Empresa, cod_Funcionario),
    FOREIGN KEY (cod_Empresa) REFERENCES Empresa(cod_Empresa),
    FOREIGN KEY (cod_Funcionario) REFERENCES Funcionario(cod_Funcionario)
) ENGINE=InnoDB;

CREATE TABLE Turno (
    cod_Turno INTEGER,
    horario_Inicio INTEGER,
    horario_Fim INTEGER,
    PRIMARY KEY (cod_Turno)
) ENGINE=InnoDB;

CREATE TABLE Funcionario_Turno (
    cod_Funcionario INTEGER,
    cod_Turno INTEGER,
    PRIMARY KEY (cod_Turno, cod_Funcionario),
    FOREIGN KEY (cod_Turno) REFERENCES Turno(cod_Turno),
    FOREIGN KEY (cod_Funcionario) REFERENCES Funcionario(cod_Funcionario)
) ENGINE=InnoDB;

CREATE TABLE Garagem (
    cod_Garagem INTEGER,
    endereco varchar(50),
    capacidade INTEGER,
    PRIMARY KEY (cod_Garagem)
) ENGINE=InnoDB;

CREATE TABLE Empresa_Garagem (
    cod_Empresa INTEGER,
    cod_Garagem INTEGER,
    PRIMARY KEY (cod_Empresa, cod_Garagem),
    FOREIGN KEY (cod_Garagem) REFERENCES Garagem(cod_Garagem),
    FOREIGN KEY (cod_Empresa) REFERENCES Empresa(cod_Empresa)
) ENGINE=InnoDB;

CREATE TABLE Linha_Onibus (
    cod_Linha INTEGER,
    trajeto INTEGER,
    tempo_medio INTEGER,
    PRIMARY KEY (cod_Linha)
) ENGINE=InnoDB;

CREATE TABLE Turno_Linha (
    cod_Linha INTEGER,
    cod_Turno INTEGER,
    PRIMARY KEY (cod_Linha, cod_Turno),
    FOREIGN KEY (cod_Turno) REFERENCES Turno(cod_Turno),
    FOREIGN KEY (cod_Linha) REFERENCES Linha_Onibus(cod_Linha)
) ENGINE=InnoDB;

CREATE TABLE Ponto_Onibus (
    cod_PontoOnibus INTEGER,
    endereco varchar(50),
    PRIMARY KEY (cod_PontoOnibus)
) ENGINE=InnoDB;

CREATE TABLE Ponto_LinhaOnibus (
	cod_Linha INTEGER,
	cod_PontoOnibus INTEGER,
	PRIMARY KEY(cod_Linha, cod_PontoOnibus),
	foreign KEY(cod_Linha) references Linha_Onibus(cod_Linha),
	foreign KEY(cod_PontoOnibus) references Ponto_Onibus(cod_PontoOnibus)	
) ENGINE=InnoDB;

CREATE TABLE Onibus (
    placa varchar(50),
    modelo varchar(50),
    capacidade INTEGER,
    data_manutencao INTEGER,
    quilometragem INTEGER,
    fabricante varchar(50),
    PRIMARY KEY (placa)
) ENGINE=InnoDB;

CREATE TABLE Empresa_Onibus (
	cod_Empresa INTEGER,
	placa VARCHAR(50),
	PRIMARY KEY(cod_Empresa, placa),
	foreign KEY(placa) references Onibus(placa),
	foreign KEY(cod_Empresa) references Empresa(cod_Empresa)	
) ENGINE=InnoDB;

CREATE TABLE Funcionario_Onibus (
	cod_Funcionario INTEGER,
	placa VARCHAR(50),
	PRIMARY KEY(cod_Funcionario, placa),
	foreign KEY(placa) references Onibus(placa),
	foreign KEY(cod_Funcionario) references Funcionario(cod_Funcionario)	
) ENGINE=InnoDB;

CREATE TABLE Garagem_Onibus (
	cod_Garagem INTEGER,
	placa VARCHAR(50),
	num_vaga INTEGER,
	PRIMARY KEY(cod_Garagem, placa),
	foreign KEY(placa) references Onibus(placa),
	foreign KEY(cod_Garagem) references Garagem(cod_Garagem)	
) ENGINE=InnoDB;

CREATE TABLE LinhaOnibus_Onibus (
	cod_Linha INTEGER,
	placa VARCHAR(50),
	PRIMARY KEY(cod_Linha, placa),
	foreign KEY(placa) references Onibus(placa),
	foreign KEY(cod_Linha) references Linha_Onibus(cod_Linha)	
) ENGINE=InnoDB;

CREATE TABLE Transacao_Bilhetagem (
    cod_transacao INTEGER,
    forma VARCHAR(50),
    PRIMARY KEY (cod_transacao)
) ENGINE=InnoDB;

CREATE TABLE Transacao_Bilhete(
    tipo varchar(50),
    cod_transacao INTEGER,
    PRIMARY KEY (cod_transacao),
    FOREIGN KEY (cod_transacao) REFERENCES Transacao_Bilhetagem(cod_transacao)
) ENGINE=InnoDB;

CREATE TABLE Transacao_Pagamento(
    metodo varchar(50),
    cod_transacao INTEGER,
    PRIMARY KEY (cod_transacao),
    FOREIGN KEY (cod_transacao) REFERENCES Transacao_Bilhetagem(cod_transacao)
) ENGINE=InnoDB;

CREATE TABLE Transacao_Empresa (
	cod_Empresa INTEGER,
	cod_transacao INTEGER,
	PRIMARY KEY(cod_Empresa, cod_transacao),
	foreign KEY(cod_transacao) references Transacao_Bilhetagem(cod_transacao),
	foreign KEY(cod_Empresa) references Empresa(cod_Empresa)	
) ENGINE=InnoDB;

CREATE TABLE Transacao_Onibus (
	placa varchar(50),
	cod_transacao INTEGER,
	PRIMARY KEY(placa, cod_transacao),
	foreign KEY(cod_transacao) references Transacao_Bilhetagem(cod_transacao),
	foreign KEY(placa) references Onibus(placa)	
) ENGINE=InnoDB;