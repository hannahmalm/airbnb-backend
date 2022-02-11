class Api::V1::SessionsController < ApplicationController
    #This is where Authorization and Sessions Occur

    def create
        @user = User.find_by(username: params[:session][:username])

        if @user && @user.authenticate(params[:session][:password])
            session[:user_id] = @user.id
            render json: @user
        else 
            render json: {
                error: "Invalid Username or Password"
            }
    end 


    def destroy

    end 

end
