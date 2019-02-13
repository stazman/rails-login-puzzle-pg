class Logins < ActiveRecord::Migration[5.2]
  def change
    create_table :logins do |t|
      t.string :usr
      t.string :pword
      t.timestamps
    end
  end
end
