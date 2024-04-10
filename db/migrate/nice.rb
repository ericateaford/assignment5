class AddTitleToSurvey < ActiveRecord::Migration[7.1]
  def change
    add_column :surveys, :title, :string
  end
end
