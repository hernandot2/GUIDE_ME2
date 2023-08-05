class MentorshipsController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def create
    @program = Program.find(params[:program_id])
    @mentorship = Mentorship.new(user: current_user, program: @program)

    authorize @mentorship
    
    if @mentorship.save
      redirect_to program_path(@program), notice: "você se inscreveu neste programa!"
    else
      render program_path(@program), notice: "algo de errado não deu certo!"
    end

  end

  def destroy
    @mentorship = Mentorship.find(params[:format])
    
    authorize @mentorship

    @mentorship.destroy
    redirect_to profile_path(current_user), notice: "você se desinscreveu do programa"
  end
end
