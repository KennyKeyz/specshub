class UsersController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user_item, only: [:edit, :update, :show, :destroy]
  
  access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

  def index
    @users = User.all
  end



  




  def new
    @user = User.new
    
  end

  def show
  	
  end

  def edit
  	
   
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'User successfully created' }
        
      else
        format.html { render :new }
        
      end
    end
  end

   def update
   	
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to users_path, notice: 'The user was successfully updated.' }
        
      else
        format.html { render :edit }
        
      end
    end
  end

  def destroy
  	
    @portfolio_item.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Record was removed.' }
      
    end
  end

  private 

  def user_params
    params.require(:user).permit(:email,
                                     :password,
                                     :password_confirmation,
                                     :fist_name, 
                                      :middle_name, 
                                      :last_name, 
                                      :phone_number,
                                      :work_place)
    
  
  end

  def set_user_item
    @user = User.find(params[:id])
  end  

end
