class Payment < ApplicationBase
    attr_accessor :value, :id, :payee, :payer, :due
end
