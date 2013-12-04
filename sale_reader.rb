class SaleReader
  def self.import_monthly_sales_list(monthly_sales_file)
    sales = []
    CSV.foreach(monthly_sales_file, headers: true) do |line|
      sale = Sale.new(line['last_name'],line['gross_sale_value'])
      sales << sale
    end
    sales
  end

  def self.display_monthly_sales_list(sales_list)
    sales_list.each do |sale|
      puts "#{sale.last_name} : #{sale.gross_sale_value}"
    end
  end

  def self.calculate_monthly_gross(sales)
    monthly_gross = 0
    sales.each do |sale|
      monthly_gross += sale.gross_sale_value.to_f
    end
    monthly_gross
  end
end