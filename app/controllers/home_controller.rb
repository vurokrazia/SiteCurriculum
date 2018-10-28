class HomeController < ApplicationController
  def index
    @projects   = Curriculum.project
    @works      = Curriculum.work
    @skills     = Myskill.all
  end

  def history
  end

  def portafolio
  end

  def contact
  end

  def articles
  end

  def categories
  end
end
