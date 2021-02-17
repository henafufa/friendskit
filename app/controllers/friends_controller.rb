class FriendsController < ApplicationController

  # get friends
  def index
    @friends= Friend.all
  end

  # get friends/1
  def show
    @friend = Friend.find(params[:id])
  end

  # get friends/new
  def new
   @friend = Friend.new
  end

  # get /friends/1/edit
  def edit
    @friend = Friend.find(params[:id])
  end

  # post friends
  def create
    @friend= Friend.new(user_params)
    if @friend.save
      flash[:success]= "You successfully registered #{@friend.first_name}" 
      redirect_to @friend
    else
      # flash[:danger]= " unsuccessfully registeration" 
      render 'new'
    end

  end

  def update
    @friend = Friend.find(params[:id])
    if @friend.update(user_params)
      flash[:success]="Your profile updated successfully"
      redirect_to friends_url
    else
      flash[:danger]="Your not updated successfully"
      render 'edit'
    end

  end
  
  def destroy
    @friend = Friend.find(params[:id])
    if @friend.destroy
      flash[:success]="Friend Deleted successfuly"
      redirect_to @friend
    else
      flash[:danger]="Friend not deleted successfully"
    end

  end

  private
  def user_params
    params.require(:friend).permit(:first_name, :last_name, :email, :phone, :twitter)
  end
  
end
