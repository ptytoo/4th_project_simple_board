class PostController < ApplicationController
    
    def index
        @posts = Post.all
    end
    
    def new
    end
    
    def create
        @title = params[:title]
        @content = params[:content]
        @post = User.find_by(email: session[:user_email])
        Post.create(
         user_id: @post.id,
         user_email: @post.email,
         title: @title,   
         content: @content
        )
        
        redirect_to '/'
    end
    
    def show
        @id = params[:id]
        @post = Post.find(@id)
        @comments = @post.comments
    end
    
    def modify
        @id = params[:id]
        @post = Post.find(@id)
    end
    
    def update
        @id = params[:id]
        @post = Post.find(@id)
        @user_id = session[:user_email]
        @post.update(
            title: params[:title],
            content: params[:content]
        )
        redirect_to "/post/show/#{@id}"
    end
    
    def destroy
        @id = params[:id]
        post = Post.find(@id)
        post.destroy
        redirect_to '/'
    end
    
    def create_comment
        @comment = params[:comment]
        Comment.create(
            content: @comment,
            post_id: params[:post_id]
        )
        redirect_to :back
    end
    
end
