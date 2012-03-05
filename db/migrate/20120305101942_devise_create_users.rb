class DeviseCreateUsers < ActiveRecord::Migration
  def change
    create_table(:users) do |t|
      t.string :name
      t.string :email, :null => false
      t.string :openid_url, :null => false
      t.timestamps :null => false
    end

    add_index :users, :email, :unique => true
  end
end
