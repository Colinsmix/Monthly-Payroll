class Employee
  def self.import_employee_list(employee_file)
    employees = []
    CSV.foreach(employee_file, headers: true) do |line|
      employee_hash = {}
      line.each do |x|
        employee_hash[x[0]] = x[1]
      end
      new_employee = determine_position(employee_hash)
      employees << new_employee
    end
    employees
  end

  def self.display_employee_list(list)
    list.each do |employee|
      puts "#{employee.first_name} #{employee.last_name} : #{employee.class}"
    end
  end

  def self.determine_position(employee)
    case employee['position']
      when 'Owner'
        Owner.new(employee)
      when 'Quota_sales'
        QuotaSalesPerson.new(employee)
      when 'Commission_sales'
        CommisionSalesPerson.new(employee)
      when 'Developer'
        Developer.new(employee)
      when 'Designer'
        Designer.new(employee)
      else
      end
  end
end

