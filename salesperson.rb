class SalesPerson < EmployeeBase
  def add_sale_to_total
  end
end

class QuotaSalesPerson < SalesPerson

  def check_bonus
  end

  def add_bonus
  end
end

class CommisionSalesPerson < SalesPerson
  def add_commision
  end
end
