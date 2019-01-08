class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.string :title
      t.integer :ratio
      t.string :content

      t.timestamps
    end
  end
end