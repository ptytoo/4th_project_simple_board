class UserController < ApplicationController
    
    def index
        @users = User.all
    end
    
    def new
    end

    
    def create
        User.create(
            email: params[:email],
            password: params[:password]
        )
        redirect_to '/'
    end
    
    def show
    end
    
    def login
    end
    
    #1. 디비에 유저가 없을 때
    #2. 유저는 있는데 비번을 틀렸을 때
    def login_process
            user = User.find_by(email: params[:email])
        if user
            if user.password == params[:password]
                session[:user_email] = user.email
                flash[:notice] = "로그인 성공!"
                redirect_to '/'
            else
                flash[:notice] = "비밀번호가 다릅니다."
                redirect_to '/user/login'
            end
        else
            flash[:notice] = "존재하지 않는 아이디입니다."
            redirect_to '/user/new'
        end
        
    end
    
    def logout
        session.clear
        flash[:notice] = "로그아웃 되었습니다."
        redirect_to '/'
    end
end
