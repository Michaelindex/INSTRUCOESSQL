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

-- Usando Concatena��o
Select concat(firstname, lastname) From Employees

Select concat(firstname, ' mora em ', city) From Employees

Select concat(ProductName, ' tem ', UnitsInStock, ' unidades no estoque') From Products

Select concat(ProductName, ' vale ', UnitsInStock*UnitPrice, ' reais, com base no seu estoque') From Products

--Usando distin��es � Filtrando valores repetidos
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
	Country As Pa�s
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

select lastname, hiredate
from Employees
where lastname like 'SU%' and 
hiredate like '%1993%'

select CategoryID, categoryname, description
from Categories
where categoryid = 1 or categoryid = 3

select shipperid, companyname, phone
from Shippers
where not shipperid = 2

--Selecione o territorydescription que tem o territoryid > 2 e que tenha o territorydescription iniciado pela letra a
select TerritoryDescription
from Territories
where TerritoryID > 2 and TerritoryDescription like 'A%'

--Selecione a company name da tabela shippers que tenham os shipperid 1 ou 3
select CompanyName
from Shippers
where ShipperID = 1 or ShipperID = 3

--Selecione o regiondescription da tabela region menos do regionid de numero 3
select RegionDescription
from Region
where RegionID <> 3

--Selecione Nome e Sobrenome de forma decrescente da data de contrata��o dos funcionarios
select FirstName, LastName, HireDate
from Employees
order by HireDate desc

--Selecione o nome dos produtos de forma N�O alfab�tica
select ProductID, ProductName
from Products
order by ProductName desc

--Selecione tudo de orders e ordene de forma decrescente o employeeID
select * 
from Orders
order by EmployeeID desc

--Selecionar produtos com pre�o de 12 at� 30 ordenados do menor para o maior pre�o
select productname, unitprice
from products
where unitprice > 12 and unitprice < 30
order by unitprice

--Selecionar terrir�tios em ordem alfab�tica
select TerritoryDescription
from territories
order by territoryDescription

--Mostre o lastname de todos os empregados orgenado por ordem cerscente
select LastName
from Employees
order by LastName desc

--Mostre todas as orderid da tabela orders ordenadas pela orderdate em ordem descrecente
select OrderDate, OrderID
from Orders
order by OrderDate desc

--Mostre os productname e as categoryid da tabela products ordenados pela categoryid e pelo productname
select ProductName, CategoryID
from Products
order by CategoryID, ProductName

--Mostre os productname e as categoryid da tabela products ordenados pelo productname e pela categoryid em ordem decrescente
select ProductName, CategoryID
from Products
order by CategoryID desc, ProductName desc

--Mostre os campos supplierid, companyname e city ordenados pelo companyname( usando numero da coluna).
select SupplierID,CompanyName,City
from Suppliers
order by CompanyName

--Selecione o Freight mais caro da tabela orders
select max(Freight)
from Orders 

--Fa�a uma somat�ria de todos os itens quantity da tabela order details
select sum(Quantity)
from [Order Details]

--Fala uma contagem de quantos orderid foram feitos
select count(OrderID)
from [Order Details]

--Calcule o pre�o m�dio dos unitprice
select avg(unitprice) 
from [Order Details]

--Mostre a hiredate do funcionario mais velho da empresa
select min(HireDate) as 'Funcionario mais velho'
from Employees

--Selecione todos os colaboradores que ganham um sal�rio acima da m�dia salarial
select FirstName, Salary
from Employees
where Salary > 
(select avg(Salary)
from Employees)

--Selecione os pedidos feitos por Brasileiros e Franceses
select * 
from Orders
where ShipCountry = 'Brazil' or ShipCountry = 'France'

--Selecione 3 tabelas e crie a tabela nem com o primeiro e o segundo nome no mesmo lugar
select
	EmployeeID,
	name = firstname + ' ' + lastname,
	title
from employees
where not employeeID = 5

--Selecione a tabela companyname e o fax, mas fax deve ficar vazio
select
	companyname,
	fax
from suppliers
where fax is null

--Selecione todos os produtos em ordem crescente de estoque
select 
	*
from Products
order by UnitsInStock

Select customerid, sum(Freight)
from orders
group by customerid

select customerid, sum(freight)
from orders
group by customerid
having sum (freight) > 40
order by customerid desc

select categoryid as categoria, sum(unitsinstock) as estoque
from products
group by categoryid

select productid as produto, sum(quantitu) as vendido
from order details
group by productid
having sum(quantity) > 500

select employeeID as colaborador, count(*) as pedidos feitos
from orders
group by employeeID
order by employeeID desc

select orderid as pedido, sum(unitprice) as soma dos precos
from order details
group by orderid
having sum(unitprice) > 200

select shipvia, sum(freight)
from orders
group by shipvia
order by sum(freight) desc


--ABAIXO BANCO DE DADOS CRIADO - bcoLivraria

