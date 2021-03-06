class PostsController < ApplicationController
  
    before_action :correct_user,   only: [:edit]
    helper_method :sort_column
    
    def index 
      if params[:search]
        @posts = Post.includes(:user).order(params[:sort]).paginate(page: params[:page], per_page: 5).search(params[:search])
      else
        @posts = Post.all.includes(:user).order(params[:sort]).paginate(page: params[:page], per_page: 5)
      end
    end
    
    def showMyPosts
      #@current_user = User.find(Rails.application.config.current_user.id)
      @posts = current_user.posts.includes(:user).order(params[:sort]).paginate(page: params[:page], per_page: 5)
    end
    
    def new 
        @post = Post.new
    end
    
    def show
        @post = Post.find(params[:id])
    end
    
    def send_request_mail
      @post = Post.find(params[:id])
      @user = User.find(@post.user_id)
      @current_user = User.find(current_user.id)
      #@current_user = User.find(Rails.application.config.current_user.id)
      
     # if params[:post]
        UserMailer.request_email(@post, @current_user).deliver_now
        UserMailer.confirmation_email(@post, @current_user).deliver_now
        flash[:notice] = "Thank you for helping! An email has been sent to #{@user.name}."
        redirect_to '/posts'
     # end
    end
  
    def create 

      #@current_user = User.find(Rails.application.config.current_user.id)
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
      redirect_to '/showMyPosts'
    end
    
    private
        # Never trust parameters from the scary internet, only allow the white list through.
        def post_params
            params.require(:post).permit(:title, :description, :usermyid)
        end

      # Confirms the correct user.
      def correct_user
        @post = Post.find(params[:id])
        redirect_to root_path unless @post.user_id == current_user.id
      end
      
      def sort_column
        #Post.column_names.include?(params[:sort]) ? params[:sort] : nil   
        (params[:sort]) ? params[:sort] : nil   
      end
end