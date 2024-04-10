class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.belongs_to :survey, null: false, foreign_key: true
      t.string :rails
      t.string :g
      t.string :scaffold
      t.string :choices
      t.belongs_to :question, null: false, foreign_key: true
      t.string :input
      t.string :title
      t.string :radio
      t.string :multiple
      t.string :search

      t.timestamps
    end
  end
end
