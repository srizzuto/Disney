class PersonajesController < ApplicationController

  before_action :require_user_logged_in!

  def new
    @personajes = Personaje.all
    @personaje = Personaje.new
  end

  def create
    @personaje = Personaje.new(personaje_params)
    if @personaje.save
      redirect_to personaje_path, notice: "Película agregada"
    else
      render :new, alert: "La película no fue agregada"
    end
  end

  def update
  end

  def destroy
  end

  def personaje_params
    params.require(:personaje).permit(:nombre, :edad, :peso, :historia)
  end
end