class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.integer :animal_id
      t.string :name
      t.string :species
      t.string :sex
      t.string :breed
      t.integer :age

      t.timestamps
    end
  end
end
