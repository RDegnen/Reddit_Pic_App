class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.text :link

      t.timestamps
    end
  end
end
