class Owner < EmployeeBase

  def calculate_bonus(sales) #check to see if owner gets a bonus
    add_bonus if SaleReader.calculate_monthly_gross(sales) >= @gross_sales_quota
  end

  def add_bonus
    @total_bonus += @quota_bonus
  end

end
