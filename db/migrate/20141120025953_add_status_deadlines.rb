class AddStatusDeadlines < ActiveRecord::Migration
  def change
  	add_column :deadlines, :status, :string
  end
end
