require "pry"
class CashRegister

attr_reader :discount
attr_accessor :total, :items, :last_transaction


  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end

  def add_item(title, price, quantity = 1)
  self.total = self.total + price*quantity
  # binding.pry
 quantity.times { @items << title }
 self.last_transaction = price * quantity
   end


  def apply_discount
    if discount != 0
      @discount = @discount.to_f/100 * self.total
      self.total = self.total - @discount
        "After the discount, the total comes to $#{self.total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    self.total = self.total - self.last_transaction
  end

end
