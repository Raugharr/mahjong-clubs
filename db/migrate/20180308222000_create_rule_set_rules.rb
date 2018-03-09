class CreateRuleSetRules < ActiveRecord::Migration[5.1]
  def change
    create_table :rule_set_rules do |t|

      t.timestamps
    end
  end
end
