
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
-- 7 A quantidade de funcionários que nasceram depois de 1990
select count(*) as total_pos_1990
from funcionarios
where dataNascFunc > '1990-12-31';

-- 8 A média de salários de todos os funcionários da empresa
select avg(SalarioFunc) as media_salarial
from funcionarios;

-- 9 O nome do funcionário, data de nascimento no formato (dd/mm/aaaa) e e-mail, 
-- dos funcionários que possuem salários entre 5000 e 7000, ordene pelo nome do funcionário.
select nomeFunc, date_format(dataNascFunc, '%d/%m/%Y') as data_nascimento, emailFunc
from funcionarios
where SalarioFunc between 5000 and 7000
order by nomeFunc ASC;

-- 10 Nome do departamento e a soma dos salários pagos nesse departamento, 
-- dos funcionários e agrupe pelo nome dos departamentos.
select d.nomeDep, sum(f.SalarioFunc) as total_salarios
from funcionarios f join departamentos d
on f.depCodigo = d.codigoDep
group by d.nomeDep;

-- 11 A quantidade de Funcionários da empresa.
select count(*) as total_funcionarios
from funcionarios;

-- 12 Todos os Funcionários quem tem entre 1 e 3 anos de tempo de serviço.
select * from funcionarios
where tempo_servico between 1 and 3;

-- 13 O(s) nome(s) do(s) departamento(s) que aloca(m) 2 ou mais funcionários.
select d.nomeDep
from funcionarios f join departamentos d
on f.depCodigo = d.codigoDep
group by d.nomeDep
having count(f.codigoFunc) >= 2;

-- 14 Os Funcionários e as datas do início de suas férias as quais começam 
-- nos dias 5, 8 ou 10 de qualquer mês ordenado decrescentemente por data.
select nomeFunc, inicio_ferias
from funcionarios
where day(inicio_ferias) in (5, 8, 10)
order by inicio_ferias DESC;

-- 15 A data de nascimento, no formato dd/mm/aaaa, do empregado mais jovem.
select date_format(max(dataNascFunc), '%d/%m/%Y') as data_nascimento_jovem
from funcionarios;

-- 16 Os empregados que tiraram férias entre os meses 3 e 7 
-- e as suas respectivas datas no formato dd/mm/aaaa.
select nomeFunc, date_format(inicio_ferias, '%d/%m/%Y') as data_ferias
from funcionarios
where month(inicio_ferias) between 3 and 7;



