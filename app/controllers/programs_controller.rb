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
      redirect_to @program, notice: "Programa criado com sucesso"
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
      redirect_to @program, notice: 'Program was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  end
end

private

def program_params
  params.require(:program).permit(:name, :description, :category)
end
