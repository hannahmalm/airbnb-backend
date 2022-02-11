class ApplicationController < ActionController::API

    def current_user
        User.find(sessions[:user_id])
    end 

    def logged_in?
        !!current_user
    end

end
