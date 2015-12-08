class UsersController < ApplicationController
  
  before_action :correct_user,   only: [:edit]
  helper_method :sort_column

  def index
    if params[:search]
      @users = User.order(params[:sort]).paginate(page: params[:page], per_page: 5).search(params[:search])
    else
      @users = User.all.order(params[:sort]).paginate(page: params[:page], per_page: 5)
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
    @current_user = User.find(current_user.id)
    #@current_user = User.find(Rails.application.config.current_user.id)
    
    if params[:user][:points]
      @user.points += params[:user][:points].to_i
      @current_user.points -= params[:user][:points].to_i
      
      if @user.save
        if @current_user.save  # uncomment this when we can test with multiple users.
          redirect_to @user
        else
          render 'show'
        end

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
    
    # Confirms the correct user.
    def correct_user
      @user = User.find(params[:id])
      redirect_to root_path unless @user == current_user
    end
    
    def sort_column
      (params[:sort]) ? params[:sort] : nil   
    end 
end
