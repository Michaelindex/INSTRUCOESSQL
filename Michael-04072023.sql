--Selecionar todos os funcionarios--
select * from Employees

--Selecionar nome e sobrenome--
select FirstName, LastName from Employees

--Selecionar todas as categorias PESQUISA1
select * from Categories

--Selecionar o ID e o name da Categoria PESQUISA2
select CategoryID, CategoryName from Categories

--Selecionar região PESQUISA3
select * from Region

--Selecionar o Território PESQUISA4
select * from Territories

--Selecionar Produtos PESQUISA5
select * from Products

--Selecionando o preço de 12 produtos ( cada produto da lista )
select ProductName, UnitPrice, UnitPrice * 12 From Products

--Diminuindo 20% o preço dos produtos
select ProductName, UnitPrice, UnitPrice * 0.8 From Products

--Somar o preço do produto PESQUISA1
select ProductName, UnitPrice, UnitPrice + 15 From Products

--Subtrair o preço do produto PESQUISA2
select ProductName, UnitPrice, UnitPrice -15 From Products

--Divisão do produto PESQUISA3
select ProductName, UnitPrice, UnitPrice / 5 From Products

--Aumentando o Estoque em 50 unidades para cada produto
select 
	ProductName As Produto,
	UnitsInStock As Estoque,
	UnitsInStock + 50 As [Novo Estoque + 50]
From Products

select
	ProductName As Produto,
	UnitPrice As [Preço],
	UnitsInStock As Estoque,
	UnitsInStock * UnitPrice As [Valor do Estoque]
From Products

-- Usando Concatenação
Select concat(firstname, lastname) From Employees

Select concat(firstname, ' mora em ', city) From Employees

Select concat(ProductName, ' tem ', UnitsInStock, ' unidades no estoque') From Products

Select concat(ProductName, ' vale ', UnitsInStock*UnitPrice, ' reais, com base no seu estoque') From Products

--Usando distinções – Filtrando valores repetidos
Select  TitleOfCourtesy From employees
Select  distinct(TitleOfCourtesy) From employees
Select distinct(OrderDate) from Orders

-- Usando Where para Filtrar
Select territoryDescription From territories Where Regionid = 3
Select lastname From employees Where firstname = 'Laura'
Select orderid,customerid From orders Where shippeddate= '1996-16-07 00:00:00.000';

-- Filtrando os Clientes do Brasil ou Argentina
Select 
	CompanyName As Empresa, 
	ContactName  As Contato,
	Country As País
From Customers
where Country != 'Brazil'

select distinct(Country) as [Lista de Paises] from Customers Order By Country

select productname, supplierid, unitprice
from products
where unitprice > 0 

select territoryid, territorydescription
from territories
where territoryid between 90000 and 100000

select * from Products

select UnitPrice 
from Products
where UnitPrice > 10

select ProductId 
from Products
where ProductId <> 1

select ProductId 
from Products
where ProductId between 10 and 40

select ProductId 
from Products
where ProductId != 10

select productname
from products
where productname like '___s%'

select firstname, city, region
from Employees
where region is null

select ContactName
from Customers
where ContactName like 'D%'

select CategoryID, ProductName
from Products
where CategoryID in (1,2,3,7)
order by CategoryID

select * 
from Orders
where ShipCountry in ('Brazil', 'France', 'Germany')
order by ShipCountry