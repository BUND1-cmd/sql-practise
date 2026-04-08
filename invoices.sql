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