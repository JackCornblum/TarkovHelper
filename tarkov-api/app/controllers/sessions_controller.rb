class SessionsController < ApplicationController

    def create
        user = User.find_by(username: params[:username])
       
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            render json: {id: user.id, username: user.username}
        else
            render json: {error: ["invalid email and/or password"]}
        end
    end

    def show
        # byebug
        user = User.find_by(id: session[:user_id])
        # byebug

        if user
            render json: {id: user.id, username: user.username}
        else
            render json: {message: ['no user signed in']}
        end
    end

    def destroy
        session.delete :user_id
        head :no_content
    end

end
