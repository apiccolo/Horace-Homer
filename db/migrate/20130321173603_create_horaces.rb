class CreateHoraces < ActiveRecord::Migration
  def change
    create_table :horaces do |t|
      t.integer :book
      t.integer :ode
      t.string :line
      t.string :words
      t.text :obs

      t.timestamps
    end
  end
end
