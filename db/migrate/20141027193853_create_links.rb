class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :original
      t.string :code
      t.timestamps null: false
    end

    add_index :links, :code
  end
end
