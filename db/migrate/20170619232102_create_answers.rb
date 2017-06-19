class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.boolean :best_answer, default: false
      t.string :body, null: false
      t.references :user
      t.references :question

      t.timestamps
    end
  end
end
