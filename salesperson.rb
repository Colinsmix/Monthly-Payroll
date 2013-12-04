class SalesPerson < EmployeeBase

  def add_sale_to_total(sale)
    @monthly_sales += sale.gross_sale_value
  end
end

class QuotaSalesPerson < SalesPerson

  def calculate_bonus
    add_bonus if @monthly_sales >= @gross_sales_quota
  end

  def add_bonus
    @total_bonus += @quota_bonus
  end
end

class CommisionSalesPerson < SalesPerson
  def calculate_bonus
    @total_bonus += @monthly_sales * @commission_rate
  end
end
