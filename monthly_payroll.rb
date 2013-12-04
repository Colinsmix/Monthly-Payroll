require_relative 'employeebase.rb'
require_relative 'employee.rb'
require_relative 'sale.rb'
require_relative 'owner.rb'
require_relative 'developer.rb'
require_relative 'salesperson.rb'
require_relative 'sale_reader.rb'
require 'csv'
require 'pry'

employees = Employee.import_employee_list('employee_list.csv')
sales = SaleReader.import_monthly_sales_list('sales_data.csv')
Employee.display_employee_list(employees)
SaleReader.display_monthly_sales_list(sales)
binding.pry