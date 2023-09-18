-- @block
CREATE TABLE Departamentos(
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    PRIMARY KEY (codigo)
)

-- @block
CREATE TABLE Projetos(
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    PRIMARY KEY (codigo)
)

-- @block
CREATE TABLE Empregados(
    matricula INT NOT NULL,
    nome VARCHAR(50),
    cod_departamento INT,
    cod_projeto INT,
    PRIMARY KEY (matricula),
    FOREIGN KEY (cod_departamento) REFERENCES Departamentos(codigo),
    FOREIGN KEY (cod_projeto) REFERENCES Projetos(codigo)
)

-- @block
INSERT INTO Departamentos(nome) VALUES("Frontend");
INSERT INTO Departamentos(nome) VALUES("Backend");
INSERT INTO Departamentos(nome) VALUES("Infra");
INSERT INTO Departamentos(nome) VALUES("Testes");
INSERT INTO Departamentos(nome) VALUES("Suporte");

-- @block
INSERT INTO Projetos(nome) VALUES("Website da empresa");
INSERT INTO Projetos(nome) VALUES("Portifolio do chefe");
INSERT INTO Projetos(nome) VALUES("E-commerce para solucoes");
INSERT INTO Projetos(nome) VALUES("Blog sobre pesquisa");
INSERT INTO Projetos(nome) VALUES("Novos Servidores");

-- @block
INSERT INTO Empregados VALUES(10173598, "Marcos", 3, 5);
INSERT INTO Empregados VALUES(10194565, "Lucio", 2, 3);
INSERT INTO Empregados VALUES(10154172, "Jose", 5, 2);
INSERT INTO Empregados VALUES(10136119, "Victor", 4, 4);
INSERT INTO Empregados VALUES(10174409, "Ricardo", 1, 1);

-- @block
SELECT * FROM Departamentos;

-- @block
SELECT * FROM Projetos;

-- @block
SELECT * FROM Empregados;

-- @block
UPDATE Empregados
SET nome = "Pedro"
WHERE nome = "Jose"

-- @block
ALTER TABLE Empregados
ADD email VARCHAR(20)

-- @block
ALTER TABLE Empregados
MODIFY email VARCHAR(40)

-- @block
UPDATE Empregados
SET email = "victor2001@gmail.com"
WHERE nome = "Victor"

-- @block
UPDATE Empregados
SET email = "pedrinho02@gmail.com"
WHERE nome = "Pedro"

-- @block
UPDATE Empregados
SET email = "marcospolos@gmail.com"
WHERE nome = "Marcos"

-- @block
UPDATE Empregados
SET email = "ricaricardo@gmail.com"
WHERE nome = "Ricardo"

-- @block
UPDATE Empregados
SET email = "lucio98@gmail.com"
WHERE nome = "Lucio"

-- @block
ALTER TABLE Departamentos
ADD cidade VARCHAR(30)

-- @block
UPDATE Departamentos
SET cidade = "Joinville"

-- @block
SELECT * FROM Departamentos

-- @block
CREATE TABLE Cidades(
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    uf CHAR(2) NOT NULL,
    PRIMARY KEY (codigo)
)

-- @block
INSERT INTO Cidades(nome, uf) VALUES("Joinville", "SC");
INSERT INTO Cidades(nome, uf) VALUES("Blumenau", "SC");
INSERT INTO Cidades(nome, uf) VALUES("Florianopolis", "SC");

-- @block
ALTER TABLE Departamentos
DROP COLUMN cidade

-- @block
ALTER TABLE Departamentos
ADD cod_cidade INT

-- @block
ALTER TABLE Departamentos
ADD FOREIGN KEY (cod_cidade) REFERENCES Cidades(codigo)

-- @block
SELECT * FROM Cidades

-- @block
UPDATE Departamentos
SET cod_cidade = 1

-- @block
CREATE TABLE Estado(
    codigo INT NOT NULL AUTO_INCREMENT,
    nome VARCHAR(50),
    sigla CHAR(2) NOT NULL UNIQUE,
    PRIMARY KEY (codigo)
)

-- @block
INSERT INTO Estado(nome, sigla) VALUES("Santa Catarina", "SC");
INSERT INTO Estado(nome, sigla) VALUES("Sao Paulo", "SP");

-- @block
DROP TABLE Estado
