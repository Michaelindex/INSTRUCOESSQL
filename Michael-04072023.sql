--Selecionar todos os funcionarios--
select * from Employees

--Selecionar nome e sobrenome--
select FirstName, LastName from Employees

--Selecionar todas as categorias PESQUISA1
select * from Categories

--Selecionar o ID e o name da Categoria PESQUISA2
select CategoryID, CategoryName from Categories

--Selecionar regi�o PESQUISA3
select * from Region

--Selecionar o Territ�rio PESQUISA4
select * from Territories

--Selecionar Produtos PESQUISA5
select * from Products

--Selecionando o pre�o de 12 produtos ( cada produto da lista )
select ProductName, UnitPrice, UnitPrice * 12 From Products

--Diminuindo 20% o pre�o dos produtos
select ProductName, UnitPrice, UnitPrice * 0.8 From Products

--Somar o pre�o do produto PESQUISA1
select ProductName, UnitPrice, UnitPrice + 15 From Products

--Subtrair o pre�o do produto PESQUISA2
select ProductName, UnitPrice, UnitPrice -15 From Products

--Divis�o do produto PESQUISA3
select ProductName, UnitPrice, UnitPrice / 5 From Products

--Aumentando o Estoque em 50 unidades para cada produto
select 
	ProductName As Produto,
	UnitsInStock As Estoque,
	UnitsInStock + 50 As [Novo Estoque + 50]
From Products

select
	ProductName As Produto,
	UnitPrice As [Pre�o],
	UnitsInStock As Estoque,
	UnitsInStock * UnitPrice As [Valor do Estoque]
From Products