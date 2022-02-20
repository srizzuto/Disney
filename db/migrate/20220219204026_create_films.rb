class CreateFilms < ActiveRecord::Migration[7.0]
  def change
    create_table :films do |t|
      t.string :titulo
      t.date :f_creacion
      t.integer :calificacion
      t.references :personaje, null: false, foreign_key: true

      t.timestamps
    end
  end
end
