class AddEntityNameContactEmail < ActiveRecord::Migration
  def change
  	add_column :opportunities, :entity_name, :text
  	add_column :opportunities, :entity_contact, :text
  	add_column :opportunities, :entity_phone, :integer
  	add_column :opportunities, :entity_email, :text
  end
end
