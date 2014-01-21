class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.references :author, index: true
      t.string :title

      t.timestamps
    end
  end
end
