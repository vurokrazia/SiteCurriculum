class HomeController < ApplicationController
  def index
    @curriculums = Curriculum.all
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
