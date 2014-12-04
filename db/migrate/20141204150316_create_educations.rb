class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :user_id
      t.string :school
      t.string :year
      t.string :degree

      t.timestamps
    end
  end
end
