class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :user_id
      t.string :title
      t.string :year
      t.string :category

      t.timestamps
    end
  end
end
