class MentorshipsController < ApplicationController
  before_action :authenticate_user!

  def show
  end

  def create
    @program = Program.find(params[:program_id])
    @mentorship = Mentorship.new(user: current_user, program: @program)

    authorize @mentorship

    if @mentorship.save
      redirect_to program_path(@program), notice: "you subscribed for this program!"
    else
      render program_path(@program), notice: "something went wrong!"
    end

  end

  def destroy
    @mentorship = Mentorship.find(params[:format])

    authorize @mentorship

    @mentorship.destroy
    redirect_to profile_path(current_user), notice: "you have unsubscribed from the program"
  end
end
