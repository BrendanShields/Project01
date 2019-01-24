class UsersController < ApplicationController
  def show
    @user.find(params[:id])
  end
end
