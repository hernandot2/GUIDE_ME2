class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_programs = @user.programs
  end



  private
  def program_params
    params.require(:program).permit(:name, :description, :category)
  end
end

