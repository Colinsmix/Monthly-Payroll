class Overdraft
  def initialize (balance, transaction)
    @balance = balance
    @date = transaction.date
    @expense = transaction.amount
    @description = transaction.description
  end

end