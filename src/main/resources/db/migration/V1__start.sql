CREATE TABLE Paciente (
    id BIGINT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    cpf VARCHAR(14) NOT NULL UNIQUE,
    email VARCHAR(255) NOT NULL UNIQUE,
    telefone VARCHAR(20) NOT NULL UNIQUE
);

CREATE TABLE Endereco (
    id BIGINT PRIMARY KEY,
    estado VARCHAR(255) NOT NULL,
    cidade VARCHAR(255) NOT NULL,
    rua VARCHAR(255) NOT NULL,
    numero VARCHAR(20) NOT NULL,
    cep VARCHAR(10) NOT NULL,
    paciente_id BIGINT NOT NULL,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(id)
);

CREATE TABLE Consulta (
    id BIGINT PRIMARY KEY,
    data DATE NOT NULL,
    paciente_id BIGINT,
    FOREIGN KEY (paciente_id) REFERENCES Paciente(id)
);
