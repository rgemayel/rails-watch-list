class CreateBookmarks < ActiveRecord::Migration[7.1]
  def change
    create_table :bookmarks do |t|
      t.string :comment
      t.belongs_to :list
      t.belongs_to :movie
      t.references :movie, :list, foreign_key: true, null: false

      t.timestamps
    end
  end
end
