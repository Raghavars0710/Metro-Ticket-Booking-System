class AddIndexToMember < ActiveRecord::Migration[7.0]
  def change
    add_index :members, :user_id
  end
end
