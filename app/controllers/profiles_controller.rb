class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_programs = @user.programs
  end
end
