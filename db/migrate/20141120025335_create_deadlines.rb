class CreateDeadlines < ActiveRecord::Migration
  def change
    create_table :deadlines do |t|
      t.string :name
      t.string :user_id, :integer
      t.string :opportunity_id, :integer
      t.string :description
      t.string :date

      t.timestamps
    end
  end
end
