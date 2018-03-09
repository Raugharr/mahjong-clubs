class CreateRuleSets < ActiveRecord::Migration[5.1]
  def change
    create_table :rule_sets do |t|

      t.timestamps
    end
  end
end
