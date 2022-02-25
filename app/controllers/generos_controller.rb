class GenerosController < ApplicationController

  before_action :require_user_logged_in!

  def new
    @films = Film.all
    @generos = Genero.all
    @genero = Genero.new
  end

  def create
    @genero = Genero.new(genero_params)
    if @genero.save
      redirect_to genero_path, notice: "Película agregada"
    else
      render :new, alert: "La película no fue agregada"
    end
  end

  def update
  end

  def destroy
  end

  private

  def genero_params
    params.require(:genero).permit(:nombre, :film_id => [])
  end
end