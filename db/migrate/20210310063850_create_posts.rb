class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string     :title,   null: false, default:""
      t.text       :text,    null: false
      t.integer    :area_id, null: false
      # t.integer    :score,   null: false
      t.references :user


      t.timestamps
    end
  end
end
