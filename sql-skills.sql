-- List all employee first and last names only that live in Calgary.
-- select first_name, last_name from employee where city = 'Calgary';

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column). You will need to query the employee table to find the Id for Nancy Edwards
-- select employee_id from employee where first_name = 'Nancy' and last_name = 'Edwards';
-- select * from employee where reports_to = 2;

-- Count how many people live in Lethbridge.
-- select count(*) from employee where city = 'Lethbridge';

-- Count how many orders were made from the USA.
-- select count(*) from invoice where billing_country = 'USA';

-- Find the largest order total amount.
-- select max(total) from invoice;

-- Find the smallest order total amount.
-- select min(total) from invoice;

-- Find all orders bigger than $5.
-- select total from invoice where total > 5;

-- Count how many orders were smaller than $5.
-- select count(total) from invoice where total < 5;

-- Get the total sum of the orders.
-- select sum(total) from invoice;

-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
-- select * from invoice where invoice_id 
-- in(select invoice_id from invoice_line where unit_price > .99);

-- Get the invoice_date, customer first_name and last_name, and total from all invoices.
-- select inv.invoice_date, cu.first_name, cu.last_name from customer cu
-- join invoice inv on inv.customer_id = cu.customer_id;

-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Note that support reps are on the employee table.
-- select cu.first_name, cu.last_name, emp.first_name, emp.last_name from customer cu
-- join employee emp on cu.support_rep_id = emp.employee_id;

-- Get the album title and the artist name from all albums.
-- select album.title, artist.name from artist
-- join album on album.artist_id = artist.artist_id;