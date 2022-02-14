class Api::V1::SessionsController < ApplicationController
    def create
        @user = User.find_by(username: params[:session][:username])

        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id #set the current user
            render json: @user
        else 
            render json: {
                error: "Invalid Username or Password"
            }
        end 
    end 


    def current_user 
        if logged_in?
            render json: current_user
        else 
            render json: {
                error: "No log ins"
            }
        end 
    
    end


    def destroy 
        session.clear
    end 

end
