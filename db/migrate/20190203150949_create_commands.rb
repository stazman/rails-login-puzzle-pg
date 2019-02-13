class CreateCommands < ActiveRecord::Migration[5.2]
  def change
    create_table :commands do |t|
      t.string :command_entry

      t.timestamps
    end
  end
end
