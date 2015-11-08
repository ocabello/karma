class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find_by_myid(params[:id])
    @posts = Post.where("usermyid"=> @user.myid)
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params_1)
    if @user.save
      log_in @user
      redirect_to '/users'
    else
      render 'new'
    end
  end
  
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(user_params)
        format.html { redirect_to(@user, :notice => "#{@user.name}'s points was updated.") }
        format.xml  { head :ok }
      end
    end
  end
  
  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
        params.require(:user).permit(:points)
    end
    
    def user_params_1
      params.require(:user).permit(:name, :email, :points, :myid)
    end
        
  
end
