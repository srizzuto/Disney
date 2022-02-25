class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :titulo, null: false
      t.date :f_creacion, null: false
      t.integer :calificacion, null: false
      t.references :personaje, foreign_key: true
      t.references :genero, foreign_key: true
      t.timestamps
    end
  end
end
