class CreateAppliedOpps < ActiveRecord::Migration
  def change
    create_table :applied_opps do |t|
      t.integer :UserID
      t.integer :OppID

      t.timestamps
    end
  end
end
