class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.text :content
      t.string :anonymous_commentor
      t.belongs_to :gossip, index: true
<<<<<<< HEAD

=======
      t.belongs_to :user, index: true
>>>>>>> 6b28e9f3d1ae41a2f5d092f49dba7f416a17d98d
      t.timestamps
    end
  end
end
