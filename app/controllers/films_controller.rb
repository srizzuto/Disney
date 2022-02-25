class FilmsController < ApplicationController

  before_action :require_user_logged_in!

  def new
    @films = Film.all
    @film = Film.new
  end

  def create
    @film = Film.new(films_params)
    if @film.save
      redirect_to film_path, notice: "Película agregada"
    else
      render :new, alert: "La película no fue agregada"
    end
  end

  def update
  end

  def destroy
  end

  private

  def films_params
    params.require(:film).permit(:titulo, :f_creacion, :calificacion, :personaje_id => [], :genero_id => [])
  end
end