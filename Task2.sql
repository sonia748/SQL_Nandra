/* Task-2
Migrate the database into SQL server database
1. Your Instructor has given you four files that came from an obsolete database and
it is your job to migrate this data into a sql server database. Once the data is added
to sql server you need to check the data and setup the relationships between the

tables.*/

create database Spices ;

use Spices;

select * from customers;
select * from Products;
select * from [Order Details ];
select * from Orders;

/* 2. Once you have finished this, create a query that displays :CompanyName, 
Address,of the customer along with the total for each order that the customer has
made.Save this query as a sql script called Question2.sql to your desktop.*/

select [Customers ].CompanyName, [Customers ].Address,
		[Customers ].CustomerID,([Order Details].UnitPrice * [Order Details ].Quantity) as 'Total Spent'
from [Customers ] 
inner join [Orders ] on Customers.CustomerID=[Orders ].CustomerID
inner join [Order Details ] on [Orders ].OrderID=[Order Details].OrderID;


    /*3. Create a View that joins the customers table to the orders table and have the view
        show CompanyName, Address, City and OrderDate. Save the View as
        CustomersView */


Create view CustomersView 
As
select [Customers ].CompanyName, [Customers ].Address, [Customers ].City, [Orders ].OrderDate
	from [Customers ]
	right join [Orders ] on [Orders ].OrderID=[Orders ].OrderID

	select * from CustomersView;

  /*4. Once the CustomersView is created query the view to show only Customers from
       London.*/

	   select * from CustomersView where City='London';


	  /* 5. Create a stored procedure will return a list of products based on the parameter
            values that you pass to stored procedure. Save the stored procedure as
            ProductSearch. */

	select [Products ].ProductName from [Products ]
	
		Create Procedure ProductSearch
	As
	Begin
	select [Products ].ProductName from [Products ]
	End;

	EXEC ProductSearch;

	/*6. Create a tabled valued function that takes allows you to pass Coutry name to the
         function. This function should join the Customers table to the Orders table and
         you should also be able to filter by Order date (ie Show me a list of Customers
         from Germany who ordered products between 1996 and 1997) */

		 Create view GermanyOrder1996_1997
		 As
		 select [Customers ].CompanyName, [Customers ].Country,
		 [Orders ].OrderDate
		 from [Customers ]
		 right join [Orders ] on [Orders ].OrderID=[Orders ].OrderID
		 where customers.Country='Germany'and 
		 [Orders ].OrderDate Between '1996' and '1997'

		 select * from GermanyOrder1996_1997;

		 /*7. Create a nonclustered index on the primary key for the Customers Table and
              Create a clustered index on the CompanyName field of the Customers table.*/
			         
					 /*NonClustered Index */
			select * from [Customers ]	
			
			Create nonclustered index Indx_CustomerID
			on [Customers ](CustomerID);

			select * from [Customers ] where CustomerID like '%a';
		
		/*Clustered Index----Can create only one time on PK */
		
		select * from Customers where CompanyName Like 'An%';

		/*8. Provide a list of suitable fields that you could implement full text searching on.*/

		select * from [Customers ] where CompanyName Like '%a';

		select * from [Customers ] where Phone Like '(503)%';

		select * from [Orders ] where CustomerID Like '%a';

		select * from [Order Details ] where OrderID Like '10%';

		/*9. Create a Database Diagram in SQL Server to show the relationships between the
             tables above.*/




