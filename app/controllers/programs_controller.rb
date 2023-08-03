class ProgramsController < ApplicationController
  before_action :set_program, only: [ :show, :edit, :update, :destroy ]

  def index
    if params[:category]
      @programs = policy_scope(Program).where(category: params[:category])
    else
      @programs = policy_scope(Program)
    end
  end


  def show
  end

  def new
    @program = Program.new
    authorize @program
  end

  def create
    @program = Program.new(program_params)
    @program.user = current_user
    authorize @program
    if @program.save
      redirect_to @program, notice: "programa criado com sucesso"
    else
      render :new
    end
  end

  def edit
    authorize @program
  end

  def update
    authorize @program
    if @program.update(program_params)
      redirect_to @program, notice: 'programa atualizado com sucesso'
    else
      render :edit
    end
  end

  def destroy
    authorize @program
    @program.destroy
    redirect_to programs_path, notice: "programa excluído com sucesso"
  end

  private

  def set_program
    @program = Program.find(params[:id])
  end

  def program_params
    params.require(:program).permit(:name, :description, :category)
  end
end
