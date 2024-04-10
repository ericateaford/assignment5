class AddDescriptionToSurvey < ActiveRecord::Migration[7.1]
  def change
    add_column :surveys, :description, :string
  end
end
