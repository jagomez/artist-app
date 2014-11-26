class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :image
      t.string :title
      t.string :medium
      t.string :year
      t.string :description
      t.string :size

      t.timestamps
    end
  end
end
