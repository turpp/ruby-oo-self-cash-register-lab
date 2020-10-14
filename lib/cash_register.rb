require 'pry'
class CashRegister
attr_accessor :total, :discount
attr_reader :title

@@all=[]

def initialize(discount=0)
    @total=0
    @discount=discount
    @inventory=[]
    @cart_total = []
    
end

def add_item(title,price,quantity=1)
    @list = @inventory
    @cost= @total
    if quantity == 1
@total=price * quantity + @total
    # @inventory << title
    self.inventory=(title)
    self.cart_total=(price)
    else
        count = 0
        while count < quantity
            self.inventory=(title)
            self.cart_total=(price)
            count +=1
        end
        @total=price * quantity + @total
    end



end



def cart_total
    @cart_total
end

def cart_total=(price)
    @cart_total << price
end

def inventory=(title)

    @inventory << title
end

def inventory
    @inventory
end

def apply_discount
 if @discount == 0
    "There is no discount to apply."
 else
    # binding.pry
    percent_dicount = @discount.to_f / 100
    @total= @total - (@total*percent_dicount)
    # @total = @total.to_i
    "After the discount, the total comes to $#{@total.to_i}."
 end
end


def items
    self.inventory
end

def void_last_transaction
@total = @cost


    # self.cart_total.pop

    # @total = self.cart_total.inject(0) {|sum, i|  sum + i }
    # @total
    # binding.pry


    # array=[self.cart_total
    # last_removed= array.pop
    # total = last_removed.inject(0) {|sum, i|  sum + i }
    # total
    # binding.pry


    
end
    
    
  



end

