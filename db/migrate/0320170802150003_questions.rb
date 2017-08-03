class Questions < ActiveRecord::Migration[5.1]
  def change
    create_table "questions", force: :cascade do |t|
      t.bigint "user_id"
      t.string "title"
      t.text "content"
      t.integer "rating"
      t.bigint "tag_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["tag_id"], name: "index_questions_on_tag_id"
      t.index ["user_id"], name: "index_questions_on_user_id"
    end
  end
end
