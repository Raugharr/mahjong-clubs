class CreateClubRules < ActiveRecord::Migration[5.1]
  def change
    create_table :club_rules do |t|
      t.integer :club_id
	  t.integer :rule_id

      t.timestamps
    end
  end
end
