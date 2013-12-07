class CreateBroadcasts < ActiveRecord::Migration
  def change
    create_table :broadcasts do |t|
      t.string :broadcast_name
      t.text :description

      t.timestamps
    end
  end
end
