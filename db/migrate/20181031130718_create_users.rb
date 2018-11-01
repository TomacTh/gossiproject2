class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email
      t.string :password
<<<<<<< HEAD

=======
      t.string :password_digest
>>>>>>> 6b28e9f3d1ae41a2f5d092f49dba7f416a17d98d
      t.timestamps
    end
  end
end
