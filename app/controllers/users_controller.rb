class UsersController < ApplicationController
  def index
    if params[:search]
      @users = User.paginate(page: params[:page], per_page: 3).search(params[:search])
    else
      @users = User.all.paginate(page: params[:page], per_page: 3)
    end    
  end

  def show
    @user = User.find(params[:id])
    #@posts = Post.where("user_id" => @user.id)
  end

  def new
    @user = User.new
  end
  def edit
    @user = User.find(params[:id])
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
  
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to '/users'
  end
    
  def update
    @user = User.find(params[:id])
    @current_user = User.find(Rails.application.config.current_user.id)
    
    if params[:user][:points]
      @user.points += params[:user][:points].to_i
      @current_user.points -= params[:user][:points].to_i
      
      if @user.save
        #if @current_user.save  # uncomment this when we can test with multiple users.
          redirect_to @user
        #else
        #  render 'show'
        #end

      else
        render 'show'
      end
      
    else
    
      if @user.update_attributes(user_params)
        redirect_to @user
      else
        render 'show'  
      end
    end
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:points, :email)
    end
    
    # def user_params_1
    #   params.require(:user).permit(:name, :email, :password, :password_confirmation, :points)
    # end
        
  
end
