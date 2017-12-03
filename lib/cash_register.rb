class CashRegister
  attr_accessor :total
  attr_reader :discount, :items

  def initialize(discount = 0)
    @total = 0
    @items = []
    @discount = discount
  end

  def add_item(name, amount, quantity = 1)
    self.total += amount * quantity
    self.items << name * quantity
  end

  def apply_discount
    return "There is no discount to apply." if @discount == 0
    @total *= (1 - @discount/100.0)
    "After the discount, the total comes to $#{@total.to_i}"
  end

#  def void_last_transaction
#  end
end
