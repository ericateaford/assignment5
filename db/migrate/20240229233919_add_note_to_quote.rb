class AddNoteToQuote < ActiveRecord::Migration[7.1]
  def change
    add_column :quotes, :note, :string
  end
end
