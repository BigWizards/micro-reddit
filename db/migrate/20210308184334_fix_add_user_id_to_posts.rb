class FixAddUserIdToPosts < ActiveRecord::Migration[6.1]
  def change
    revert do
      add_column :posts, :user_id, :integer
      add_foreign_key :posts, :users
    end

    add_reference :posts, :user, foreign_key: true
  end
end
