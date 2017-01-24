class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.integer :priority
      t.string :title
      t.text :content
      t.integer :comment_id

      t.timestamps
    end
  end
end
