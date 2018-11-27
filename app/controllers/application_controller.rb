class ApplicationController < ActionController::Base
    before_action :get_category
    
    def get_category
        @categories = Category.all
    end
    
end
