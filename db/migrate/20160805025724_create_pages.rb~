class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.text :link
      t.text :title
      t.text :h1, array: true, default: []
      t.text :h2, array: true, default: []
      t.text :h3, array: true, default: []
      t.text :a, array: true, default: []
      t.text :href, array: true, default: []

      t.timestamps null: false
    end
  end
end
