require 'pry'

class CashRegister
    attr_reader :discount
    attr_accessor :total, :item_arr, :last_transaction

    def initialize(discount = 0)
        @discount = discount
        @total = 0
        @items_arr = []
    end

    def total
        @total
    end

    def items
        @items_arr
    end

    def add_item(title, price, quantity = 1)
        quantity.times {@items_arr << title}
        @total += price * quantity
        @last_transaction = price * quantity
    end

    def apply_discount()
        if @discount != 0
            @total -= @total * @discount.to_f / 100
            "After the discount, the total comes to $800."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        @total -= @last_transaction
    end
end
