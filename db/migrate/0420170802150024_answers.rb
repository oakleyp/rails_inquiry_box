class Answers < ActiveRecord::Migration[5.1]
  def change
    create_table "answers", force: :cascade do |t|
      t.text "content"
      t.bigint "question_id"
      t.integer "rating"
      t.boolean "is_valid"
      t.bigint "tag_id"
      t.bigint "user_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["question_id"], name: "index_answers_on_question_id"
      t.index ["tag_id"], name: "index_answers_on_tag_id"
      t.index ["user_id"], name: "index_answers_on_user_id"
    end
  end
end
