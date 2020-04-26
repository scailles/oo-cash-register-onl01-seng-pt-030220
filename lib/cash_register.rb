class CashRegister
  
  attr_accessor :total, :discount, :quantity, :price
  
  
  
  def initialize(discount = 0.to_f)
    @total = 0.to_f
    @discount = discount
    @cart = []
  end
  
  def add_item(title, price, quantity = 1)
   @title = title
   @cart << title
   @total += price*quantity
   @last_t = @total
   @total
  end
  
  def apply_discount
     if @discount == 0
       return "There is no discount to apply."
     else
       total_discount = (discount/100.to_f)
       @total = (@total- (@total * total_discount))
       return "After the discount, the total comes to $#{@total.to_i}."
     end
  end
    
  
   def items
    @total =- @last_t
    @total
  end 
      
      
  def void_last_transaction
    @total -= @price
    if @total == 0
      return "0.0"
    end
  end
  
  
  
end


  
