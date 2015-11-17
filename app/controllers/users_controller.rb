class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    #@posts = Post.where("user_id" => @user.id)

  end

  def new
    @user = User.new
  end
  
  # def create
  #   @user = User.new(user_params_1)
  #   if @user.save
  #     log_in @user
  #     redirect_to '/users'
  #   else
  #     render 'new'
  #   end
  # end
  
  def update
    @user = User.find(params[:id])
      if @user.update_attributes(user_params)
        redirect_to @user
      else
        render 'show'  
      end
    
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:points)
    end
    
    # def user_params_1
    #   params.require(:user).permit(:name, :email, :password, :password_confirmation, :points)
    # end
        
  
end
