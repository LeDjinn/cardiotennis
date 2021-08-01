class CreatePrograms < ActiveRecord::Migration[6.1]
  def change
    create_table :programs do |t|
      t.string :week
      t.integer :num
      t.string :themeg
      t.string :objectif
      t.string :exercice1
      t.string :exercice2
      t.string :exerciceobj
      t.text :description

      t.timestamps
    end
  end
end
