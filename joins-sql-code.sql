SELECT * FROM bookstore_employees
INNER JOIN bookstore_payroll ON
	bookstore_employees.employee_id = bookstore_payroll.employee_id;

SELECT bookstore_employees.employee_id, bookstore_payroll.employee_id, bookstore_employees.name, bookstore_payroll.gross_pay FROM bookstore_employees
LEFT JOIN bookstore_payroll ON
	bookstore_employees.employee_id = bookstore_payroll.employee_id;
    
INSERT INTO bookstore_employees (employee_id, name, location, role, employment_type, hourly_rate, hire_date, term_date) 
VALUES (998, "Bob", "YYC-DT", "Store Manager", "PERM", 30.5, 2020-03-05, NULL);
	
SELECT bookstore_employees.employee_id, bookstore_payroll.employee_id, bookstore_employees.name, bookstore_payroll.gross_pay FROM bookstore_employees
LEFT JOIN bookstore_payroll ON
	bookstore_employees.employee_id = bookstore_payroll.employee_id
WHERE bookstore_payroll.employee_id IS NULL;
    
SELECT bookstore_employees.employee_id, bookstore_payroll.employee_id, bookstore_employees.name, bookstore_payroll.gross_pay FROM bookstore_employees
RIGHT JOIN bookstore_payroll ON
	bookstore_employees.employee_id = bookstore_payroll.employee_id
WHERE bookstore_employees.employee_id IS NULL;

INSERT INTO bookstore_payroll (pay_period_start, employee_id, employee_name, location, role, employment_type, hourly_rate, hours_biweekly, gross_pay, cpp_withheld, ei_withheld, income_tax_withheld, employee_benefits, net_pay, dataset)
VALUES (2020-03-5, 997, "Bob", "YYC-DT", "Store Manager", "PERM", 30.5, 105.2, 2305.5, 105.2, NULL, 255.5, 38.53, 1650.43, "bookstore_payroll");

SELECT bookstore_employees.employee_id, bookstore_payroll.employee_id, bookstore_employees.name, bookstore_payroll.gross_pay FROM bookstore_employees
RIGHT JOIN bookstore_payroll ON
	bookstore_employees.employee_id = bookstore_payroll.employee_id
WHERE bookstore_employees.employee_id IS NULL;