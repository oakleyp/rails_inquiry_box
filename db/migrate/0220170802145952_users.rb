class Users < ActiveRecord::Migration[5.1]
  def change
    create_table "users", force: :cascade do |t|
      t.string "displayname"
      t.string "email"
      t.string "password_digest"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
