class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    def current_cart
        if session[:order_id]
            Order.find(session[:order_id])
        else
            Order.new
        end
    end
end
