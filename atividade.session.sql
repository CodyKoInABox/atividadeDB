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