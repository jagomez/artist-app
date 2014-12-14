class AddStatusToOpportunities < ActiveRecord::Migration
  def change
  	add_column :opportunities, :status, :string
  end
end
