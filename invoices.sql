select invoices.vendors_name,amount,country from invoices
RIGHT JOIN vendors on invoices.vendor_name=vendors.vendor_name

select invoices.vendor_name,amount,country from invoices
left join vendors on invoices.vendor_name=vendors.vendor_name

select invoices.vendors_name,amount,country from invoices
RIGHT JOIN vendors on invoices.vendor_name=vendors.vendor_name
UNION
select invoices.vendor_name,amount,country from invoices
left join vendors on invoices.vendor_name=vendors.vendor_name

select vendor_name,sum(amount) as total_amount,count(*) as invoice_count from invoices
where status in ("Paid")
group by vendor_name 
having sum(amount)>300000
order by total_amount desc

select department,avg(amount) as invoice_amount,sum(amount)as total_spend,count(*)as invoice_count from invoices
group by department
having avg(amount)>200000
order by total_spend desc

select invoices.vendor_name,vendors.country,amount,status,vendors.vendor_type from invoices
inner join vendors on invoices.vendor_name=vendors.vendor_name
where country ="Kenya" and status in ("Pending","Overdue")
order by amount DESC