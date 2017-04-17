class JurysController < ApplicationController
  def index
    @gradeworks = Gradework.all
  end
  
  def home
    @gradeworks = Gradework.all
  end
end
