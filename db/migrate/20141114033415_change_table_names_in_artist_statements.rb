class ChangeTableNamesInArtistStatements < ActiveRecord::Migration
  def change
  	rename_column :artist_statements, :Description, :description
  	rename_column :artist_statements, :UserID, :user_id
  	rename_column :artist_statements, :Statement, :statement
  end
end
