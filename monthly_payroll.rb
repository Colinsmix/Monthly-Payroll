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
sales.each do |sale|
  employees.each do |employee|
    employee.add_sale_to_total(sale) if employee.last_name == sale.last_name
  end
end
employees.each do |employee|
  if employee.class == Owner
    employee.calculate_bonus(sales)
  else
    employee.calculate_bonus
  end
  puts "***#{employee.first_name} #{employee.last_name}***"
  puts "Gross Salary : #{employee.gross_salary}"
  puts "Net Pay : #{employee.net_pay}"
  puts "***"
end
