class CreateHomers < ActiveRecord::Migration
  def change
    create_table :homers do |t|
      t.string :epic
      t.integer :book
      t.string :line
      t.text :obs

      t.timestamps
    end
  end
end
