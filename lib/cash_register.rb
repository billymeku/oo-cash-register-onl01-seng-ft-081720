<<<<<<< HEAD
class CashRegister
  attr_accessor :total
  attr_reader :discount


  def initialize(discount=nil)
    @total = 0
    @discount = discount
    @@items = []
    @@totals = []
  end
  def add_item(title,price,quantity = 1)
    @total += price * quantity
    quantity.times do
      @@items << title
    end
    @@totals << @total
  end
  def apply_discount
    if @discount == nil
      return "There is no discount to apply."
    else
      @total -= @total * @discount / 100
      return "After the discount, the total comes to $#{@total}."
    end
  end

  def items
    @@items
  end

  def void_last_transaction
     @@totals.pop
    if @@totals == []
      @total = 0.0
      @total
    else
      @total = @@totals.last
      @total
    end

  end
end
=======
class CashRegister
  attr_accessor :total, :discount 
def initialize(total=0, discount =20)
  @total = total 
  @discount = discount 
   end
  
  def self.total
    @total
   end 
  
  def add_item(title, price, quantity = 1)
    @total = @total + price*quantity
    @total_t = title
    end
  
  
  def apply_discount(items,)
    
    puts "After the discount, the total comes to $"
    
    
     puts "There is no discount to apply."
    
  end 
  
end 
>>>>>>> 8e10a99827f130e42fd98d6f7fa8b2baf2b7ea23
