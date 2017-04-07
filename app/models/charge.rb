class Charge < ActiveRecord::Base
    def self.get
        Charge.first
    end

    def self.charge_for_use
        format_money(Charge.get.cpu/100)
    end

    protected

    def self.format_money value
        money = Money.new(value, "BRL")
        money.currency.symbol + money.to_s
    end
end
