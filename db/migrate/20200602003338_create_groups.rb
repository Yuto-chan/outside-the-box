class CreateGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :groups do |t|
      t.string :name, null: false
      t.index :name, unique: true
      t.text :used_language
      t.text :accommodation
      t.string :food
      t.string :language_policy
      t.text :education
      t.string :visa
      t.string :servise
      t.text :special_circumstances
      t.timestamps
    end
  end
end