class PagesController < ApplicationController
  def home
    if params[:category]
      @programs = Program.where(category: params[:category])
    else
      @programs = Program.all
    end
  end

  def contact
  end
end
