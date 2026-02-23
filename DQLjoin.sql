use bdEmpresa;
desc funcionarios;
-- 1. Crie dois funcionários sem departamento alocado.
insert into Funcionarios values
(221, 'Bruno', 'Costa', '1992-04-10', '111.555.444-22', '1234888', 'Rua X, 50', 'bruno.costa@email.com', '999-000-111', NULL, 'Consultor', 5500.00, 1, '2025-08-10', 0),
(222, 'Daniela', 'Souza', '1995-09-20', '222.666.555-33', '8765111', 'Av Y, 100', 'daniela.souza@email.com', '888-111-222', NULL, 'Designer', 6200.00, 2, '2025-09-15', 1);

-- 2. Crie 2 departamentos novos.
insert into Departamentos values 
(116, 'Inovação e Transformação Digital', 'Florianópolis', 21),
(117, 'Segurança da Informação', 'São Paulo', 12);

-- 3. Mostre todos os funcionários (nome) e seus respectivos departamentos (nome), 
-- ordene pelo nome do funcionário.
-- (O INNER JOIN vai oculta quem não tem departamento.)
select concat(f.nomeFunc,' ',f.sobrenomeFunc) as NomeCompleto,d.nomeDep as DepartamentoDoSujeitoKk
from funcionarios f join departamentos d
on f.depCodigo = d.codigoDep
order by f.nomeFunc ASC;

-- 4. Mostre todos os funcionários (nome) e seus respectivos departamentos (nome), 
-- leve em consideração os funcionários que não tem departamento.
-- com o LEFT JOIN vai priorizar a parte "left" no caso os funcionarios fazendo com que todos os funcionários apareçam.
select concat(f.nomeFunc,' ',f.sobrenomeFunc) as NomeCompleto, d.nomeDep as DepartamentoDoSujeitoKk
from funcionarios f left join departamentos d
on f.depCodigo = d.codigoDep;

-- 5. Mostre todos os funcionários (nome) e seus respectivos departamento (nome), 
-- leve em consideração os departamentos que não tem funcionários.
-- Mesma coisa da questão anterior porém agora priorizando a parte "right"
select concat(f.nomeFunc,' ',f.sobrenomeFunc) as NomeCompleto, d.nomeDep as DepartamentoDoSujeitoKk
from funcionarios f right join departamentos d
on f.depCodigo = d.codigoDep;

-- 6. Mostre todos os funcionários (nome) e seus respectivos departamento (nome) , leve em consideração os
-- departamento que não tem funcionários e os funcionáriosque não tem departamento, ordene pelo nome do funcionário
-- Mostre todos os funcionários (nome) e seus respectivos departamentos (nome),
-- incluindo funcionários sem departamento e departamentos sem funcionários,
-- ordenando pelo nome do funcionário.
-- no mysql nao tem o full join, entao ta pra usar o left com um UNION com o right, "simulando" o full

select concat(f.nomeFunc,' ',f.sobrenomeFunc) as NomeCompleto, d.nomeDep as DepartamentoDoSujeitoKk
from funcionarios f left join departamentos d
on f.depCodigo = d.codigoDep

UNION

select concat(f.nomeFunc,' ',f.sobrenomeFunc) as NomeCompleto, d.nomeDep as DepartamentoDoSujeitoKk
from funcionarios f right join departamentos d
on f.depCodigo = d.codigoDep

order by NomeCompleto ASC;

-- 7. Para cada linha da tabela FUNCIONARIO todos os DEPARTAMENTOS ou vice-versa.
select concat(f.nomeFunc,' ',f.sobrenomeFunc) as NomeCompleto, d.nomeDep as DepartamentoDoSujeitoKk
from funcionarios f cross join departamentos d;
-- 8 Mostre o nome e o cpf de funcionário, localização dodepartamento dos funcionário que tem o sobrenome Oliveira, ordene pelo nome do funcionário
-- Seleciona nome, CPF e localização para o clã dos Oliveira
select f.nomeFunc, f.cpfFunc, d.localizacaoDep
from funcionarios f join departamentos d
on f.depCodigo = d.codigoDep
where f.sobrenomeFunc = 'Oliveira'
order by f.nomeFunc ASC;
-- 9  Mostre o nome do departamento e o nome e salário do funcionário em que salário seja maior que 8000.
select concat(f.nomeFunc,' ',f.sobrenomeFunc) as NomeCompleto, d.nomeDep as DepartamentoDoSujeitoKk, f.SalarioFunc
from funcionarios f left join departamentos d
on f.depCodigo = d.codigoDep where  SalarioFunc > 8000 ;
