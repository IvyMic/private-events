class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user
      session[:current_user_id] = user.id
      redirect_to user_path(user)
    else
      flash.now[:danger] = 'Something went wrong'
      render 'new'
    end
  end

  def destroy
    session.delete(:current_user_id)
    redirect_to root_path
  end
end
