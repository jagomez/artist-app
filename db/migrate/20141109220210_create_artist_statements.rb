class CreateArtistStatements < ActiveRecord::Migration
  def change
    create_table :artist_statements do |t|
      t.integer :UserID
      t.text :Description
      t.text :Statement

      t.timestamps
    end
  end
end
