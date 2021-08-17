class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:user][:username])
       
        if user && user.authenticate(params[:user][:password])
            session[:user_id] = user.id
            render json: {id: user.id, username: user.username}
        else
            render json: {error: ["invalid email and/or password"]}
        end
    end

end
