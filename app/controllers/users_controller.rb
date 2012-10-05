class UsersController < ApplicationController

  def index

  end

  def new
    @user = User.new
  end

  def create
    user = params[:user]
    user[:active] = 0
    user[:token] = UUIDTools::UUID.md5_create(UUIDTools::UUID_DNS_NAMESPACE, 'mysite.com')
    @user = User.new(user)
    if @user.save
      UserMailer.welcome_email(@user).deliver

      format.html {redirect_to}
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def activate
    #@user = User.find_by
  end

  def in
      #session[:user_id] =
  end

  def out
      session[:user_id] = nil
  end

end
