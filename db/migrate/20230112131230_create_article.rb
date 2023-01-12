class CreateArticle < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :blog
      t.string :b_image
      t.timestamps
    end
  end
end