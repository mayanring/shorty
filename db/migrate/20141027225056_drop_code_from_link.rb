class DropCodeFromLink < ActiveRecord::Migration
  def change
    remove_index :links, column: :code
    remove_column :links, :code, :string
  end
end
