class PostsController < ApplicationController
    
    def index 
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def new 
        @post = Post.new
    end
    
    def create 
      @post = Post.new(post_params) 
      if @post.save 
        redirect_to '/posts' 
      else 
        render 'new' 
      end 
    end

    private
        # Never trust parameters from the scary internet, only allow the white list through.
        def post_params
            params.require(:post).permit(:title, :description, :postedBy)
        end

end
