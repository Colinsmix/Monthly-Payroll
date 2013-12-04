class EmployeeBase
  TAX_RATE = 0.30
  attr_reader :last_name, :first_name, :base_salary, :commission_rate, :quota_bonus, :gross_sales_quota

  def initialize(last_name,first_name,base_salary,commission_rate,quota_bonus,gross_sales_quota)
    @first_name = first_name
    @last_name = last_name
    @base_salary = base_salary
    @commission_rate = commission_rate
    @quota_bonus = quota_bonus
    @gross_sales_quota = gross_sales_quota
  end

  def calculate_net_pay

  end
end