class CreatePersonajes < ActiveRecord::Migration[7.0]
  def change
    create_table :personajes do |t|
      t.string :nombre, null: false
      t.integer :edad, null: false
      t.integer :peso, null: false
      t.text :historia, null: false
      t.references :film, null: false, foreign_key: true

      t.timestamps
    end
  end
end
