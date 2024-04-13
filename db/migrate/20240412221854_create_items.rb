class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :syohinmei
      t.integer :syohincode
      t.integer :suuryo
      t.text  :comment
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
