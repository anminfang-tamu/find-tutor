class UsersController < ApplicationController
    before_action :set_user, only: [:show, :edit, :update, :destroy]
    
    def show
        @user = User.find(params[:id])
    end
    
    def index
        @users = User.all
    end
    
    def new
        @user = User.new
    end
    
    def edit
        # @user = User.find(params[:id])
    end
    
    def create
        @user = User.new(user_params)
        if @user.save
            flash[:notice] = "Profile was created successfully."
            redirect_to @user
        else
            render 'new'
        end
    end
    
    def update
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:notice] = "The profile was updated successfully."
            redirect_to @user
        else
            render 'edit'
        end
    end
    
    private

    def set_user
        @user = User.find(params[:id])
    end
    
    def user_params
        params.require(:user).permit(:first_name, :last_name, :user_name, :display_name,
            :gender, :email, :description, :major, :tutor_major)
    end
    
end