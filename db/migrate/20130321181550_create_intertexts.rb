class CreateIntertexts < ActiveRecord::Migration
  def change
    create_table :intertexts do |t|
      t.integer :horace_id
      t.integer :homer_id
      t.text :source
      t.text :obs
      t.integer :order, :default => 0

      t.timestamps
    end
  end
end
