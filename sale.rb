class Sale
  attr_reader :last_name, :gross_sale_value
  def initialize(last_name,gross_sale_value)
    @last_name = last_name
    @gross_sale_value = gross_sale_value
  end
end