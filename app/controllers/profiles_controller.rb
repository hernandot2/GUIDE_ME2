class ProfilesController < ApplicationController
  def show
    @user = User.find(params[:id])
    @user_programs = @user.programs
    @user_mentorships = @user.mentorships
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to profile_path(@user), notice: 'dados atualizados com sucesso!'
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :description, :job, :company, :photo)
  end
end

