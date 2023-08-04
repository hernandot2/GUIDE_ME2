class MentorshipsController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def create
    program = Program.find(params[:program_id])
    mentorship = Mentorship.new(user: current_user, program: program)

    if mentorship.save
      flash[:success] = "você se inscreveu neste programa!"
    else
      flash[:error] = "algo deu errado"
    end

    redirect_to program_path(program)
  end

  def destroy
    mentorship = Mentorship.find(params[:id])
    if mentorship.user == current_user
      mentorship.destroy
      flash[:success] = "você se desinscreveu do programa"
    else
      flash[:error] = "você não tem autorização para se desinscrever"
    end
    redirect_to profiles_path
  end
end
