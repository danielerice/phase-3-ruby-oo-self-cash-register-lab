class CashRegister 

    attr_accessor :total, :previous_total, :item_array
    attr_reader :discount


    def initialize discount = 0
        @total = 0
        @discount = discount
        @item_array = Array.new
    end

    def add_item item, cost, amount = 1
        @item_array += [item] * amount
        @previous_total = @total
        @total += cost * amount
    end

    def apply_discount
        if discount != 0
            @total = @total -200
            return "After the discount, the total comes to $#{@total}."
        else
            "There is no discount to apply."
        end
    end

    def items
        @item_array
    end

    def void_last_transaction
        @total = @previous_total
    end
end
