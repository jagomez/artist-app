class CreateOpportunities < ActiveRecord::Migration
  def change
    create_table :opportunities do |t|
      t.text :projectname
      t.integer :entity_id
      t.text :project_scope
      t.text :category
      t.integer :fee
      t.text :prereq
      t.text :deadline

      t.timestamps
    end
  end
end
