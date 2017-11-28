class CreateRules < ActiveRecord::Migration[5.1]
  def change
    create_table :rules do |t|
      t.integer :owner_id
      t.string :text

      t.timestamps
    end
  end
end