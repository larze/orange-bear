class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :slug
      t.string :twitter
      t.string :website
      t.text :bio
      t.boolean :visible
      t.boolean :staff
      t.boolean :admin


      t.timestamps
    end
    add_index :people, :slug
  end
end
