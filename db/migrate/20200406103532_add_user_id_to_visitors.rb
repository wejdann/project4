class AddUserIdToVisitors < ActiveRecord::Migration[5.2]
  def change
    add_reference :visitors, :user, foreign_key: true
  end
end
