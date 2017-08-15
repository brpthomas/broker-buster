class UsersController < ApplicationController
  # before these actions, we want to require a token
  before_action :require_token, only: [:validate]
  before_action :set_user, only: [:show]
  def index 
  @users = User.all
  render :json => @users
  end

  def show
  render :json => @user
  end



  # method to validate a user
  # basically a way to ping the server to make sure the token cookie is correct
  # and to get the user's information
  def validate
    # because of the before_action, if there is not a valid user,
    # an error will be sent, otherwise we want to send a json with the current_user
    render :json => @current_user
  end

  # method to create a new user
  def create
    puts user_params.inspect()
    @user = User.new(user_params)
    # check if the user is valid
    if @user.valid?
      # if it is, save it
      @user.save()
      # and render a json of the information we want to send to the client
      render :json =>  @user
    else # if the user is not valid
      # send back an error with the error messages
      puts @user.errors.messages.inspect()
      render status: :bad_request, :json => {
        :errors => @user.errors.messages
      }
    end
  end
  def update
    puts "HEY FROM UPDATE IN USER CONTROLLERS"
    @user = User.find(params[:id])
    if @user.update(:balance => "#{params[:balance]}")
      render :json => {:user => @user}
    end

  end
  def picture
    @user = User.find(params[:id])
    if @user.update(:image_url =>"#{params[:image_url]}")
      render :json => {:user => @user}
    end 
  end 



  private

  # accepted parameters for a user
  def user_params
    params.permit(:name, :email, :password, :password_confirmation, :balance, :image_url)
  end
  def set_user
    @user = User.find(params[:id])
  end 
end
