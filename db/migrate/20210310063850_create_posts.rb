class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :title,   null: false, default:""
      t.text       :text
      t.integer    :area_id, null: false
      t.integer    :score,   null: false
      t.references :user,    foreign_key: true


      t.timestamps
    end
  end
end
