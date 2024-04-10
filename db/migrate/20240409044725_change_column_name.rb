class ChangeColumnName < ActiveRecord::Migration[7.1]
  def change
    rename_column :surveys, :saying, :title
    rename_column :surveys, :said_by, :description
  end
end
