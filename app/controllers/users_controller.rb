class UsersController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]
  
  def new
    @user = User.new
  end

def create
  @user = User.new(params[:user])
  
  # Saving without session maintenance to skip
  # auto-login which can't happen here because
  # the User has not yet been activated
  if @user.save_without_session_maintenance
    @user.send_activation_instructions!      # new method in the User model
    flash[:notice] = "Your account has been created. Please check your e-mail for your account activation instructions!"
    redirect_to root_url
  else
    flash[:notice] = "There was a problem creating the user"
    render :action => :new
  end
end

def activate
  @user = User.find_using_perishable_token(params[:activation_code], 1.week) || (raise Exception)
  
  raise Exception if @user.active?
  
  if @user.activate!
    UserSession.create(@user, false)
    @user.send_activation_confirmation!
    redirect_to account_url
  else
    render :action => :new
  end
end 

  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated!"
      redirect_to account_url
    else
      render :action => :edit
    end
  end
  
def reset_password
  @user = User.find_using_perishable_token(params[:reset_password_code], 1.week) || (raise Exception)
end

def reset_password_submit
  @user = User.find_using_perishable_token(params[:reset_password_code], 1.week) || (raise Exception)
  @user.active = true
  if @user.update_attributes(params[:user].merge({:active => true}))
    flash[:notice] = "Successfully reset password."
    redirect_to @user
  else
    flash[:notice] = "There was a problem resetting your password."
    render :action => :reset_password
  end
end  

  
  
  
  
end