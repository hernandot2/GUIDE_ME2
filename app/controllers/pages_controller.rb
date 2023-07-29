class PagesController < ApplicationController
  def home
    @programs = Program.all
  end

  def contact
  end
end
