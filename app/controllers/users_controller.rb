class UsersController < ApplicationController

    def show
        @user = current_user
        @wishes = @user.wishes
        #how do i create upload just an image avatar
        # redirect_to user_path(@user)
    end
    # we need to only create the photo for which the user already exist
    
end
