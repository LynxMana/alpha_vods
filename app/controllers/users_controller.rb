class UsersController < ApplicationController
def new
  @user = User.new
end

<<<<<<< HEAD
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:notice] = "Your account information was successfully updated"
      redirect_to articles_path
    else
      render 'edit'
    end
  end
  
def create
  @user = User.new(user_params)
  if @user.save
    flash[:notice] = "Welcome to the Lynx Of The Mana #{@user.username}, you have
    successfully signed up"
=======
def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
  if @user.update(user_params)
   flash[:notice] = "Your account information was successfully updated"
   redirect_to articles_path
  else
    render 'edit'
  end

end

def create
  @user = User.new(user_params)
  if @user.save
    flash[:notice] = "Welcome to the Lynx of the Mana #{@user.username}, you have successfully signed up"
>>>>>>> users-edit
    redirect_to articles_path
  else
    render 'new'
  end
end
<<<<<<< HEAD

=======
>>>>>>> users-edit
private
def user_params
  params.require(:user).permit(:username, :email, :password)
end

end
