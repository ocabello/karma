class PostsController < ApplicationController
    
    def index 
        @posts = Post.all.includes(:user).paginate(page: params[:page], per_page: 3)
    end
    
    def showMyPosts
      @current_user = User.find(Rails.application.config.current_user.id)
      @posts = @current_user.posts.includes(:user).paginate(page: params[:page], per_page: 3)
    end
    
    def new 
        @post = Post.new
    end
    
    def show
        @post = Post.find(params[:id])
    end
  
    def create 

      @current_user = User.find(Rails.application.config.current_user.id)
      @post = current_user.posts.build(post_params)
      
      if @post.save 
        redirect_to '/posts' 
      else 
        render 'new' 
      end 
    end
    
    def edit
      @post = Post.find(params[:id])
    end
    
    def update
      @post = Post.find(params[:id])
      if @post.update_attributes(post_params)
        redirect_to @post
      else
        render 'edit'  
      end
    end
    
    def destroy
      Post.find(params[:id]).destroy
      flash[:success] = "Post deleted"
      redirect_to '/posts'
    end
    
    private
        # Never trust parameters from the scary internet, only allow the white list through.
        def post_params
            params.require(:post).permit(:title, :description, :usermyid)
        end

end
