class VisitorsController < ApplicationController
    def login
        cookies.signed[:login] = true;
        redirect_to :root
    end
    def logout
        cookies.delete(:login)
        redirect_to :root
    end        

    def billing
    end
end
