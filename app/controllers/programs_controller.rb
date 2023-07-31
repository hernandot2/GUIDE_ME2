class ProgramsController < ApplicationController
  def index
    @programs = Program.all
  end

  def show
    @program = Program.find(params[:id])
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(program_params)
    @program.user = current_user

    if @program.save
      redirect_to @program, notice: "programa criado com sucesso"
    else
      render :new
    end
  end

  def edit
    @program = Program.find(params[:id])
  end

  def update
    @program = Program.find(params[:id])
    if @program.update(program_params)
      redirect_to @program, notice: 'programa atualizado com sucesso'
    else
      render :edit
    end
  end

  def destroy
    @program = Program.find(params[:id])
    @program.destroy
    redirect_to programs_path, notice: "programa excluído com sucesso"
  end

  private

  def program_params
    params.require(:program).permit(:name, :description, :category)
  end
end
