create database bdEmpresa;

use bdEmpresa;

-- Tabela Departamentos
CREATE TABLE Departamentos (
    codigoDep INT NOT NULL PRIMARY KEY,
    nomeDep VARCHAR(100) NOT NULL,
    localizacaoDep VARCHAR(50) NOT NULL,
    qtdadeFuncionarioDep INT
);

INSERT INTO Departamentos VALUES 
 (101, 'Vendas', 'São Paulo', 25),
 (102, 'Tecnologia da Informação', 'Rio de Janeiro', 30),
 (103, 'Recursos Humanos', 'Brasília', 20),
 (104, 'Produção', 'Belo Horizonte', 40),
 (105, 'Marketing', 'Salvador', 15),
 (106, 'Finanças', 'Porto Alegre', 18),
 (107, 'Logística', 'Curitiba', 22),
 (108, 'Atendimento ao Cliente', 'Fortaleza', 28),
 (109, 'Pesquisa e Desenvolvimento', 'Manaus', 35),
 (110, 'Jurídico', 'Recife', 16),
 (111, 'Compras', 'Campinas', 24),
 (112, 'Qualidade', 'Goiânia', 19),
 (113, 'Comunicação', 'Vitória', 14),
 (114, 'Educação Corporativa', 'Natal', 32),
 (115, 'Sustentabilidade', 'Maceió', 27);

-- Tabela Funcionarios
CREATE TABLE Funcionarios (
    codigoFunc INT NOT NULL PRIMARY KEY,
    nomeFunc VARCHAR(255) NOT NULL,
    sobrenomeFunc VARCHAR(255) NOT NULL,
    dataNascFunc DATE NOT NULL,
    cpfFunc VARCHAR(14) NOT NULL,
    rgFunc VARCHAR(20),
    endFunc VARCHAR(255),
    emailFunc VARCHAR(255),
    telFunc VARCHAR(20),
    depCodigo INT,
    FuncaoFunc VARCHAR(255) NOT NULL,
    SalarioFunc DECIMAL(10, 2),
	tempo_servico tinyint,
	inicio_ferias date,
	quantidade_filhos tinyint,
    FOREIGN KEY (depCodigo) REFERENCES Departamentos(codigoDep)
);

INSERT INTO Funcionarios VALUES
(201, 'João', 'Silva', '1985-05-10', '123.456.789-00', '9876543', 'Rua A, 123', 'joao.silva@email.com', '123-456-789', 101, 'Vendedor', 5000.00, 10, '2025-01-10', 2),
(202, 'Maria', 'Souza', '1990-08-15', '987.654.321-00', '1234567', 'Avenida B, 456', 'maria.souza@email.com', '987-654-321', 102, 'Analista de Sistemas', 7000.00, 7, '2025-02-01', 1),
(203, 'Carlos', 'Ferreira', '1988-03-20', '111.222.333-44', '7654321', 'Rua C, 789', 'carlos.ferreira@email.com', '111-222-333', 103, 'Recrutador', 6000.00, 8, '2025-01-15', 0),
(204, 'Ana', 'Oliveira', '1995-11-25', '555.666.777-88', '2345678', 'Avenida D, 101', 'ana.oliveira@email.com', '555-666-777', 104, 'Supervisor de Produção', 8000.00, 5, '2025-06-01', 1),
(205, 'Roberto', 'Martins', '1980-12-05', '999.888.777-66', '8765432', 'Rua E, 202', 'roberto.martins@email.com', '999-888-777', 105, 'Analista de Marketing', 6500.00, 12, '2025-01-20', 3),
(206, 'Laura', 'Pereira', '1987-07-18', '777.888.999-00', '3456789', 'Rua F, 303', 'laura.pereira@email.com', '777-888-999', 106, 'Analista Financeiro', 7200.00, 9, '2025-02-10', 2),
(207, 'Pedro', 'Lima', '1993-02-12', '222.333.444-55', '8765422', 'Avenida G, 404', 'pedro.lima@email.com', '222-333-444', 107, 'Coordenador de Logística', 8500.00, 6, '2025-03-05', 1),
(208, 'Isabel', 'Costa', '1982-09-28', '444.555.666-77', '1234567', 'Rua H, 505', 'isabel.costa@email.com', '444-555-666', 108, 'Atendente', 5000.00, 14, '2025-01-08', 2),
(209, 'Rafael', 'Almeida', '1998-04-05', '666.777.888-99', '9976543', 'Avenida I, 606', 'rafael.almeida@email.com', '666-777-888', 109, 'Engenheiro de Desenvolvimento', 9000.00, 4, '2025-02-20', 0),
(210, 'Fernanda', 'Mendes', '1984-01-30', '888.999.000-11', '2345678', 'Rua J, 707', 'fernanda.mendes@email.com', '888-999-000', 110, 'Advogado', 7800.00, 11, '2025-01-12', 2),
(211, 'Lucas', 'Santos', '1991-06-22', '333.444.555-66', '7654321', 'Avenida K, 808', 'lucas.santos@email.com', '333-444-555', 111, 'Comprador', 6200.00, 7, '2025-02-05', 1),
(212, 'Carla', 'Rocha', '1989-11-15', '111.222.333-44', '8765232', 'Rua L, 909', 'carla.rocha@email.com', '111-222-333', 112, 'Analista de Qualidade', 6900.00, 8, '2025-07-18', 2),
(213, 'Antonio', 'Oliveira', '1996-08-08', '555.666.777-88', '2345678', 'Avenida M, 1010', 'antonio.oliveira@email.com', '555-666-777', 113, 'Assessor de Comunicação', 5800.00, 5, '2025-03-10', 0),
(214, 'Larissa', 'Ferreira', '1983-03-12', '999.888.777-66', '7654321', 'Rua N, 1111', 'larissa.ferreira@email.com', '999-888-777', 114, 'Instrutor de Treinamento', 6700.00, 13, '2025-01-25', 3),
(215, 'Gabriel', 'Martins', '1994-12-02', '123.456.789-00', '9872543', 'Avenida O, 1212', 'gabriel.martins@email.com', '123-456-789', 115, 'Analista de Sustentabilidade', 7300.00, 6, '2025-02-28', 1),
(216, 'Amanda', 'Silveira', '1986-05-25', '777.888.999-00', '3456789', 'Rua P, 1313', 'amanda.silveira@email.com', '777-888-999', 101, 'Vendedor', 9500.00, 10, '2025-01-05', 2),
(217, 'Marcos', 'Rocha', '1997-10-18', '222.333.444-55', '8765432', 'Avenida Q, 1414', 'marcos.rocha@email.com', '222-333-444', 102, 'Desenvolvedor Full Stack', 8200.00, 4, '2025-03-15', 0),
(218, 'Juliana', 'Oliveira', '1981-07-28', '444.555.666-77', '1234567', 'Rua R, 1515', 'juliana.oliveira@email.com', '444-555-666', 103, 'Recrutador', 7200.00, 15, '2025-04-18', 2),
(219, 'Renato', 'Lima', '1999-04-05', '666.777.888-99', '9876543', 'Avenida S, 1616', 'renato.lima@email.com', '666-777-888', 104, 'Supervisor de Produção', 8800.00, 3, '2025-03-20', 0),
(220, 'Camila', 'Ferreira', '1980-11-30', '888.999.000-11', '2345678', 'Rua T, 1717', 'camila.ferreira@email.com', '888-999-000', 105, 'Analista de Marketing', 6900.00, 14, '2025-05-22', 3);


-- exercicio.
select * from funcionarios;
select * from departamentos;
desc funcionarios;
-- 1 Liste a data de nascimento e o primeiro nome dos funcionários ordenados do mais novo para o mais velho
select dataNascFunc, nomeFunc 
from funcionarios
 ORDER BY dataNascFunc DESC;
 -- 2 Liste o nome completo de todos os funcionários que nãotenham e-mail
 select concat(nomeFunc,' ',sobrenomeFunc) as nomeSemEmails
 from funcionarios
 where emailFunc is Null;
 -- 3 Liste as informações dos funcionários que possuem os cargos(Analista de Marketing, Vendedor) e ordene pelo nome.
select * from funcionarios 
where FuncaoFunc in ("Vendedor","Analista de Marketing")
order by nomeFunc ASC;
-- 4 Liste os sobrenomes dos funcionários sem repeti-los e deixe em ordem alfabética
select DISTINCT sobrenomeFunc from funcionarios
order by sobrenomeFunc ASC;
-- 5 Selecionar todos os funcionários com seus departamentos correspondentes
select f.nomeFunc, d.nomeDep 
from funcionarios f join departamentos d
on f.depCodigo = d.codigoDep;
-- 6  Selecione o nome e sobrenome do funcionário, o seudepartamento e a função,
-- o qual sua função inicia com ‘Analista’
select f.nomeFunc, f.sobrenomeFunc , d.nomeDep , f.funcaoFunc
from funcionarios f join departamentos d
on f.depCodigo = d.codigoDep
where f.funcaoFunc like "analista%";



