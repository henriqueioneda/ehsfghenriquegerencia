class IntegrationService
    def self.payments
        [
            Payment.new(value: 289, id: 1, payee: "Fulano", payer: "Beltrano", due: "22/04/2017"),
            Payment.new(value: 3000, id: 2, payee: "Fulano", payer: "Beltrano", due: "28/04/2017"),
            Payment.new(value: 150, id: 3, payee: "Fulano", payer: "Beltrano", due: "25/04/2017"),
            Payment.new(value: 250, id: 4, payee: "Fulano", payer: "Beltrano", due: "21/05/2017")
        ]
    end

    def self.users
        [
            User.new(id: 1, name: "Fulano", email: "fulano@gmail.com", acc_type: "1", phone: "(11) 1234-1234"),
            User.new(id: 2, name: "Beltrano", email: "beltrano@gmail.com", acc_type: "2", phone: "(11) 1234-1234"),
            User.new(id: 3, name: "Ciclano", email: "ciclano@gmail.com", acc_type: "3", phone: "(11) 1234-1234"),
            User.new(id: 4, name: "Deltrano", email: "deltrano@gmail.com", acc_type: "3", phone: "(11) 1234-1234")
        ]
    end

    def initialize(h)
        h.each {|k,v| public_send("#{k}=",v)}
    end

    def self.find_payment(id)
        payments.select{ |payment| payment.id == id.to_i }.first
    end 

    def self.find_user(id)
        users.select{ |user| user.id == id.to_i }.first
    end
end
