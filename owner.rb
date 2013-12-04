class Owner < EmployeeBase

  def check_bonus #check to see if owner gets a bonus
  end

  def add_bonus
    @base_salary += @bonus
  end

end
