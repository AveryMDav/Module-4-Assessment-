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

-- Artist Table
-- Select 10 artists in reverse alphabetical order.
-- select * from artist order by name desc  limit(10);

-- Select all artists that start with the word ‘Black’.
-- select * from artist where name ilike 'black%';

-- Select all artists that contain the word ‘Black’.
-- select * from artist where name ilike '%Black%';

-- Employee Table
-- Find the birthdate for the youngest employee.
-- select max(birth_date) from employee;

-- Find the birthdate for the oldest employee.
-- select min(birth_date) from employee;

-- Invoice Table
-- Count how many orders were in CA, TX, or AZ (use IN).
-- select count(*) from invoice where billing_state in('CA', 'TX', 'AZ');

-- Get the average total of the orders.
-- select avg(total) from invoice;

-- More Join Queries
-- Get all playlist_track track_ids where the playlist name is Music.
-- select pt.track_id from playlist_track pt join playlist pl
-- on pt.playlist_id = pl.playlist_id
-- where pl.name = 'Music';

-- Get all track names for playlist_id 5.
-- select track.name from track 
-- join playlist_track on playlist_track.track_id = track.track_id
-- join playlist on playlist_track.playlist_id = playlist.playlist_id
-- where playlist.playlist_id = 5;

-- Get all track names and the playlist name that they’re on ( 2 joins ).
-- select track.name, playlist.name from track 
-- join playlist_track on playlist_track.track_id = track.track_id
-- join playlist on playlist_track.playlist_id = playlist.playlist_id;

-- Get all track names and album titles that are the genre Alternative & Punk ( 2 joins ).
-- select track.name, album.title from track
-- join album on track.album_id = album.album_id
-- join genre on track.genre_id = genre.genre_id
-- where genre.name = 'Alternative & Punk';