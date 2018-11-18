class AddUserToSend < ActiveRecord::Migration[5.2]
  def change
    add_reference :sends, :user, foreign_key: true
  end
end
