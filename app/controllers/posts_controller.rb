class PostsController < ApplicationController
    
    def index 
        @posts = Post.all
        #@post.current_user_name = User.find(@post.postedBy).name

    end
    
    def new 
        @post = Post.new
    end
    
    def show
        @post = Post.find(params[:id])
        @post.current_user_name = User.find(@post.postedBy).name
    end
  
    def create 
      @post = Post.new(post_params) 
      @post.postedBy = Rails.application.config.current_user.id
      @post.poster_name = User.find(@post.postedBy).name

      
      if @post.save 
        redirect_to '/posts' 
      else 
        render 'new' 
      end 
    end

    private
        # Never trust parameters from the scary internet, only allow the white list through.
        def post_params
            params.require(:post).permit(:title, :description, :usermyid)
        end

end
