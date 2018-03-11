
class SessionsController < ApplicationController


  def new
    puts(session[:user_id])
    if(session[:user_id] != nil)
        @user = User.find_by(okta_id: session[:user_id])
      redirect_to @user
    end
    @user = User.new
  end

  def create
    puts(params)
    puts(User.find_or_create_by(okta_id: params[:okta_id]))
    @user = User.find_or_create_by(okta_id: params[:okta_id])
    puts(@user)
        session[:user_id] = @user.okta_id

        render "users/show"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
