class CreateLogins < ActiveRecord::Migration
  def change
    create_table :logins do |t|
      t.string :user
      t.string :senha

      t.timestamps
    end
  end
end
