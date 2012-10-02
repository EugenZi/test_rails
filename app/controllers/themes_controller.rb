class ThemesController < ApplicationController
  def index
  end

  def new
    @theme = Theme.new
  end

  def create
    theme = Theme.create(params[:theme])
    theme.save
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
