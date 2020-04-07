class AddUsersRolesTable < ActiveRecord::Migration[5.2]
  def up
    create_table :roles do |t|
      t.string :name
      t.string :description
      t.timestamps
    end

    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email, null: false
      t.string :password_digest
      t.belongs_to :roles
      t.references :roles, type: :uuid
      t.timestamps
    end
  end
 
  def down
    drop_table :users
    drop_table :roles
  end
end
