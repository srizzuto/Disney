class Film < ApplicationRecord
  has_and_belongs_to_many :personajes
  has_and_belongs_to_many :generos

  validates :calificacion, :inclusion => 1..5
end
