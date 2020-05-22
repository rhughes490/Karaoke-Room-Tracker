class Guest

    attr_reader :name, :wallet
    
    def initialize(name, wallet)
        @name = name
        @wallet = wallet
    end

     def take_from_wallet(money)
         @wallet -= money
    end

    # def consume_drink(drink_name, pub)
    #     price = pub.get_price_of_drink_by_name(drink_name)
    #     if price <= @wallet
    #         pub.make_purchase(drink_name)
    #         take_from_wallet(price)
    #     end


end