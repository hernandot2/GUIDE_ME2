class PagesController < ApplicationController
  def home
    @all_programs = Program.all
    @programs = @all_programs.take(8)
  end

  def contact
  end
end
