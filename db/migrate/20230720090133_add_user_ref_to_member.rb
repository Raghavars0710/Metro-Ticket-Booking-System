class AddUserRefToMember < ActiveRecord::Migration[7.0]
  def change
    add_reference :members, :user, foreign_key: true
    add_reference :metro_services, :user, foreign_key: true
  end
end
