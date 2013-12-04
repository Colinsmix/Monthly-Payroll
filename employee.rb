class Employee
  def self.import_employee_list(employee_file)
    employees = []
    CSV.foreach(employee_file, headers: true) do |line|
      new_employee = determine_position(line)
      employees << new_employee
    end
    employees
  end

  def self.display_employee_list(list)
    list.each do |employee|
      puts "#{employee.first_name} #{employee.last_name} : #{employee.class}"
    end
  end

  def self.determine_position(line)
    case line['position']
      when 'Owner'
        Owner.new(line['last_name'],line['first_name'],line['base_salary'],line['commission_rate'],line['quota_bonus'],line['gross_sales_quota'])
      when 'Quota_sales'
        QuotaSalesPerson.new(line['last_name'],line['first_name'],line['base_salary'],line['commission_rate'],line['quota_bonus'],line['gross_sales_quota'])
      when 'Commission_sales'
        CommisionSalesPerson.new(line['last_name'],line['first_name'],line['base_salary'],line['commission_rate'],line['quota_bonus'],line['gross_sales_quota'])
      when 'Developer'
        Developer.new(line['last_name'],line['first_name'],line['base_salary'],line['commission_rate'],line['quota_bonus'],line['gross_sales_quota'])
      when 'Designer'
        Designer.new(line['last_name'],line['first_name'],line['base_salary'],line['commission_rate'],line['quota_bonus'],line['gross_sales_quota'])
      else
      end
  end
end

