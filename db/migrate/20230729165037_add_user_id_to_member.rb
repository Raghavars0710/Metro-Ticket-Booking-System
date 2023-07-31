class AddUserIdToMember < ActiveRecord::Migration[7.0]
  def change
    add_column :members, :user_id, :integer
  end
end
