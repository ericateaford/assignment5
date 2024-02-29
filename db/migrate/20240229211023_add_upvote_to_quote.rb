class AddUpvoteToQuote < ActiveRecord::Migration[7.1]
  def change
    add_column :quotes, :upvotes, :integer
  end
end
