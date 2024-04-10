class CreateChoices < ActiveRecord::Migration[7.1]
  def change
    create_table :choices do |t|
      t.belongs_to :question, null: false, foreign_key: true
      t.string :input
      t.string :title
      t.string :radio
      t.string :multiple

      t.timestamps
    end
  end
end
