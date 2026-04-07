select invoices.vendors_name,amount,country from invoices
RIGHT JOIN vendors on invoices.vendor_name=vendors.vendor_name

select invoices.vendor_name,amount,country from invoices
left join vendors on invoices.vendor_name=vendors.vendor_name

select invoices.vendors_name,amount,country from invoices
RIGHT JOIN vendors on invoices.vendor_name=vendors.vendor_name
UNION
select invoices.vendor_name,amount,country from invoices
left join vendors on invoices.vendor_name=vendors.vendor_name