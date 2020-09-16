class CreateComplaints < ActiveRecord::Migration[6.0]
  def change
    create_table :complaints do |t|
      t.string :title
      t.text :text
      t.string :category
      t.string :company
      t.integer :user_id

      t.timestamps
    end
  end
end
