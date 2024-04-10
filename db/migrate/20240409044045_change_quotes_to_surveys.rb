class ChangeQuotesToSurveys < ActiveRecord::Migration[7.1]
  def change
    rename_table :quotes, :surveys
  end
end
