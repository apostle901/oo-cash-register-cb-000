class CashRegister
  attr_accessor :total
  attr_reader :discount

  def initialize(discount = 0)
    @total = 0
    @discount = discount
  end

  def add_item(name, amount, quantity = 1)
    self.total += amount * quantity
  end

  def apply_discount
    @total *= (1 - @discount/100.0)
    @total.to_i
  end
end
