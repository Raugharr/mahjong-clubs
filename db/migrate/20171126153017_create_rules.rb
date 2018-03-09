class CreateRules < ActiveRecord::Migration[5.1]
  def change
    create_table :rules do |t|
	  t.string :name
      t.string :text
	  t.boolean :allowed

      t.timestamps
    end
  end
end
