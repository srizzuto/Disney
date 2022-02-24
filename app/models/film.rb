class Film < ApplicationRecord
  has_many :personajes

  validates :calificacion, :inclusion => 1..5
end
