class CreateDetails < ActiveRecord::Migration[5.1]
  def change
    create_table :details do |t|
      t.string :FirstName
      t.string :LastName
      t.text :Address

      t.timestamps
    end
  end
end
