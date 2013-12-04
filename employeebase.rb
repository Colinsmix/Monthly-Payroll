class EmployeeBase
  TAX_RATE = 0.30
  attr_reader :last_name, :first_name, :base_salary, :commission_rate, :quota_bonus, :gross_sales_quota, :total_bonus

  def initialize(last_name,first_name,base_salary,commission_rate,quota_bonus,gross_sales_quota)
    @first_name = first_name
    @last_name = last_name
    @base_salary = base_salary.to_f
    @commission_rate = commission_rate.to_f
    @quota_bonus = quota_bonus.to_f
    @gross_sales_quota = gross_sales_quota.to_f
    @total_bonus = 0
    @monthly_sales = 0
  end

  def gross_salary
    @base_salary + @total_bonus
  end

  def net_pay
    gross_salary - gross_salary * TAX_RATE
  end

  def calculate_bonus
  end
end