class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.references :user
      t.references :votable, polymorphic: true, index: true
      t.string :vote_direction, default: "neutral"

      t.timestamps
    end
  end
end
