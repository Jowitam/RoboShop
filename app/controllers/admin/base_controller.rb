class Admin::BaseController < ApplicationController
    layout 'admin'

    before_action :authenticate

    def authenticate
        authenticate_or_request_with_http_basic 'Podaj hasło.' do |name, password|
            name == 'username' && password == 'secret'
        end
    end
end
