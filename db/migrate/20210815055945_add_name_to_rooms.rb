class AddNameToRooms < ActiveRecord::Migration[6.1]
  def change
    add_column :rooms, :roomname, :string
  end
end
