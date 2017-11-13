class UserController < ApplicationController
    
    def index
        @users = User.all
    end
    
    def new
    end

    
    def create
        @email = params[:email]
        @password = params[:password]
        User.create(
            email: @email,
            password: @password
        )
        
        redirect_to '/'
    end
    
    def show
    end
    
    def login
    end
    
    def login_process
        if User.exists?(email: params[:email]) 
            user = User.find_by(email: params[:email])
            if user.password == params[:password]
                session[:user_email] = user.email
                flash[:notice] = "로그인 성공!"
                redirect_to '/'
            else
                flash[:notice] = "로그인 실패!"
                redirect_to '/user/login'
            end
        end
        
    end
    
    def logout
        session.clear
        flash[:notice] = "로그아웃 되었습니다."
        redirect_to '/'
    end
end
