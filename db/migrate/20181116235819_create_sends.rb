class CreateSends < ActiveRecord::Migration[5.2]
  def change
    create_table :sends do |t|
      t.string :address
      t.text :coment

      t.timestamps
    end
  end
end
